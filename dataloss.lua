local args = {
    [1] = {
        [1] = {
            ["Value"] = dataloss_status,
            ["Setting"] = "LongHoldTransform",
            ["Action"] = "Set"
        },
        [2] = "_",
        [3] = {
            ["Value"] = true,
            ["Setting"] = "LoreTransform",
            ["Action"] = "Set"
        },
        [4] = "_",
        [5] = {
            ["Value"] = true,
            ["Setting"] = "ScreenShake",
            ["Action"] = "Set"
        },
        [6] = "_",
        [7] = {
            ["Value"] = true,
            ["Setting"] = "AutoItemPickup",
            ["Action"] = "Set"
        },
        [8] = "_",
        [9] = {
            ["Value"] = true,
            ["Setting"] = "PVPEnabled",
            ["Action"] = "Set"
        },
        [10] = "_",
        [11] = {
            ["Value"] = false,
            ["Setting"] = "MusicEnabled",
            ["Action"] = "Set"
        },
        [12] = "_",
        [13] = {
            ["Value"] = true,
            ["Setting"] = "PVPProtectionEnabled",
            ["Action"] = "Set"
        },
        [14] = "_",
        [15] = {
            ["Value"] = 1,
            ["Setting"] = "PowerOutput",
            ["Action"] = "Set"
        },
        [16] = "_",
        [17] = {
            ["Value"] = true,
            ["Setting"] = "HairToggle",
            ["Action"] = "Set"
        },
        [18] = "_",
        [19] = {
            ["Value"] = 1,
            ["Setting"] = "NPCRange",
            ["Action"] = "Set"
        },
        [20] = "_",
        [21] = {
            ["Move9"] = {
                ["Controller"] = {
                    ["None"] = true
                },
                ["Mouse"] = {
                    ["Nine"] = true
                }
            },
            ["Transform"] = {
                ["Controller"] = {
                    ["ButtonX"] = true
                },
                ["Mouse"] = {
                    ["R"] = true
                }
            },
            ["NextMove"] = {
                ["Controller"] = {
                    ["DPadRight"] = true
                }
            },
            ["HeavyAttack"] = {
                ["Controller"] = {
                    ["ButtonR2"] = true
                },
                ["Mouse"] = {
                    ["MouseButton2"] = true
                }
            },
            ["Move0"] = {
                ["Controller"] = {
                    ["None"] = true
                },
                ["Mouse"] = {
                    ["Zero"] = true
                }
            },
            ["Move2"] = {
                ["Controller"] = {
                    ["None"] = true
                },
                ["Mouse"] = {
                    ["Two"] = true
                }
            },
            ["Move6"] = {
                ["Controller"] = {
                    ["None"] = true
                },
                ["Mouse"] = {
                    ["Six"] = true
                }
            },
            ["LightAttack"] = {
                ["Controller"] = {
                    ["ButtonR1"] = true
                },
                ["Mouse"] = {
                    ["MouseButton1"] = true
                }
            },
            ["Move1"] = {
                ["Controller"] = {
                    ["None"] = true
                },
                ["Mouse"] = {
                    ["One"] = true
                }
            },
            ["Block"] = {
                ["Controller"] = {
                    ["ButtonL1"] = true
                },
                ["Mouse"] = {
                    ["F"] = true
                }
            },
            ["Move7"] = {
                ["Controller"] = {
                    ["None"] = true
                },
                ["Mouse"] = {
                    ["Seven"] = true
                }
            },
            ["ToggleAura"] = {
                ["Mouse"] = {
                    ["L"] = true
                }
            },
            ["Descend"] = {
                ["Mouse"] = {
                    ["LeftControl"] = true
                }
            },
            ["Jump"] = {
                ["Controller"] = {
                    ["ButtonA"] = true
                },
                ["Mouse"] = {
                    ["Space"] = true
                }
            },
            ["PreviousMove"] = {
                ["Controller"] = {
                    ["DPadLeft"] = true
                }
            },
            ["Move8"] = {
                ["Controller"] = {
                    ["None"] = true
                },
                ["Mouse"] = {
                    ["Eight"] = true
                }
            },
            ["Move5"] = {
                ["Controller"] = {
                    ["None"] = true
                },
                ["Mouse"] = {
                    ["Five"] = true
                }
            },
            ["Mount"] = {
                ["Controller"] = {
                    ["DPadDown"] = true
                },
                ["Mouse"] = {
                    ["H"] = true
                }
            },
            ["Move4"] = {
                ["Controller"] = {
                    ["None"] = true
                },
                ["Mouse"] = {
                    ["Four"] = true
                }
            },
            ["Charge"] = {
                ["Controller"] = {
                    ["DPadUp"] = true
                },
                ["Mouse"] = {
                    ["C"] = true
                }
            },
            ["Fast"] = {
                ["Controller"] = {
                    ["ButtonL2"] = true
                },
                ["Mouse"] = {
                    ["LeftShift"] = true
                }
            },
            ["UseMove"] = {
                ["Controller"] = {
                    ["ButtonY"] = true
                }
            },
            ["Dash"] = {
                ["Controller"] = {
                    ["ButtonB"] = true
                },
                ["Mouse"] = {
                    ["Q"] = true
                }
            },
            ["LockOn"] = {
                ["Controller"] = {
                    ["ButtonR3"] = true
                },
                ["Mouse"] = {
                    ["E"] = true
                }
            },
            ["KiBlast"] = {
                ["Controller"] = {
                    ["None"] = true
                },
                ["Mouse"] = {
                    ["V"] = true
                }
            },
            ["Move3"] = {
                ["Controller"] = {
                    ["None"] = true
                },
                ["Mouse"] = {
                    ["Three"] = true
                }
            }
        },
        [22] = "p"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("dataRemoteEvent"):FireServer(unpack(args))





