<!DOCTYPE html>
<html>

<head>
    <title></title>
    <link rel="stylesheet" href="style/note_taking_page_general_ui.css">
    <link rel="stylesheet" href="style/note_taking_page.css">
    <link rel="stylesheet" href="style/note.css">
    <link rel="stylesheet" href="style/note_categoary.css">
    <link rel="stylesheet" href="style/note_taking_tools.css">
    <link rel="stylesheet" href="style/opened_note.css">
    <script src="script/jquery-git.min.js"></script>
    <link rel="stylesheet" href="style/header.css">
    <link rel="stylesheet" href="style/pop_up_toggle.css">
    <script src="script/note_taking_page.js"></script>
    <script src="script/pop_up_toggle.js"></script>
    <script src="script/note_categoary.js"></script>
    
    <script src="script/note_taking_tools.js"></script>
    <script src="script/note.js"></script>
    <script src="script/ctpu.js"></script>
    
    <script src="script/add_rem_note.js"></script>
    <link rel="stylesheet" href="style/add_rem_note.css">
    

    <link rel="stylesheet" href="style/ctpu.css">
    
    <script src="script/jquery-ui-1.13.2.custom/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="src/main/resources/script/jquery-ui-1.13.2.custom/jquery-ui.min.css">
</head>

<body style="margin:0px;padding:0px;">
    <div id="header" style="width:100%;height:50px;">
        <div class="">
            <div id="app_name">NOSHE</div>
        </div>

        <div id="menu_button">
            <div id="menu" class="button-general level-1-button">
                Menu
            </div>
            <div id="pop_up_toggle">
                <div class="button-general level-1-3-button level-1-3-button-2 ACLG" id="account">
                    <div class="level-1-3-button-title">
                        <div>Account</div>
                    </div>
                    <div class="icon">
                        <?xml version="1.0" ?>
                            <svg viewBox="0 0 96 96" xmlns="http://www.w3.org/2000/svg">
                                <title/>
                                <path d="M69.8437,43.3876,33.8422,13.3863a6.0035,6.0035,0,0,0-7.6878,9.223l30.47,25.39-30.47,25.39a6.0035,6.0035,0,0,0,7.6878,9.2231L69.8437,52.6106a6.0091,6.0091,0,0,0,0-9.223Z" />
                            </svg>
                    </div>
                </div>
                <div class="button-general level-1-3-button level-1-3-button-2 ACLG">
                    <div class="level-1-3-button-title">
                        <div>Logout</div>
                    </div>
                    <div class="icon">
                        <?xml version="1.0" ?>
                            <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                <g>
                                    <path d="M0 0h24v24H0z" fill="none" />
                                    <path d="M5 22a1 1 0 0 1-1-1V3a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v3h-2V4H6v16h12v-2h2v3a1 1 0 0 1-1 1H5zm13-6v-3h-7v-2h7V8l5 4-5 4z" />
                                </g>
                            </svg>
                    </div>
                </div>
                <div class="button-general level-1-3-button level-1-3-button-2 u_info " id="return">
                    <div class="level-1-3-button-title">
                        <div>return</div>
                    </div>
                    <div class="icon">
                        <?xml version="1.0" ?>
                            <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                <g>
                                    <path d="M0 0h24v24H0z" fill="none" />
                                    <path d="M8 7v4L2 6l6-5v4h5a8 8 0 1 1 0 16H4v-2h9a6 6 0 1 0 0-12H8z" />
                                </g>
                            </svg>
                    </div>
                </div>


                <div class="button-general level-1-3-button level-1-3-button-2 u_info">
                    <div class="level-1-3-button-title">
                        <div>Change password</div>
                    </div>
                    <div class="icon">
                        <?xml version="1.0" ?>
                            <svg viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg">
                                <g id="Change_password">
                                    <path d="M464.4326,147.54a9.8985,9.8985,0,0,0-17.56,9.1406,214.2638,214.2638,0,0,1-38.7686,251.42c-83.8564,83.8476-220.3154,83.874-304.207-.0088a9.8957,9.8957,0,0,0-16.8926,7.0049v56.9a9.8965,9.8965,0,0,0,19.793,0v-34.55A234.9509,234.9509,0,0,0,464.4326,147.54Z"
                                    />
                                    <path d="M103.8965,103.9022c83.8828-83.874,220.3418-83.8652,304.207-.0088a9.8906,9.8906,0,0,0,16.8926-6.9961v-56.9a9.8965,9.8965,0,0,0-19.793,0v34.55C313.0234-1.3556,176.0547,3.7509,89.9043,89.9012A233.9561,233.9561,0,0,0,47.5674,364.454a9.8985,9.8985,0,0,0,17.56-9.1406A214.2485,214.2485,0,0,1,103.8965,103.9022Z"
                                    />
                                    <path d="M126.4009,254.5555v109.44a27.08,27.08,0,0,0,27,27H358.5991a27.077,27.077,0,0,0,27-27v-109.44a27.0777,27.0777,0,0,0-27-27H153.4009A27.0805,27.0805,0,0,0,126.4009,254.5555ZM328,288.13a21.1465,21.1465,0,1,1-21.1465,21.1464A21.1667,21.1667,0,0,1,328,288.13Zm-72,0a21.1465,21.1465,0,1,1-21.1465,21.1464A21.1667,21.1667,0,0,1,256,288.13Zm-72,0a21.1465,21.1465,0,1,1-21.1465,21.1464A21.1667,21.1667,0,0,1,184,288.13Z"
                                    />
                                    <path d="M343.6533,207.756V171.7538a87.6533,87.6533,0,0,0-175.3066,0V207.756H188.14V171.7538a67.86,67.86,0,0,1,135.7208,0V207.756Z" />
                                </g>
                            </svg>
                    </div>
                </div>

                <div class="button-general level-1-3-button level-1-3-button-2 u_info">
                    <div class="level-1-3-button-title">
                        <div>Edit user info</div>
                    </div>
                    <div class="icon">
                        <svg enable-background="new 0 0 0 0 0" height="48px" id="Layer_3" version="1.1" viewBox="0 0 48 48" width="48px" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                            <g>
                                <path d="M26.22,13.234c0.572,0,1.097-0.202,1.57-0.606c0.469-0.404,0.757-0.894,0.86-1.466   c0.098-0.576-0.024-1.062-0.38-1.466c-0.354-0.408-0.818-0.61-1.392-0.61c-0.576,0-1.1,0.202-1.569,0.61   c-0.474,0.403-0.763,0.89-0.86,1.466c-0.071,0.573,0.066,1.062,0.402,1.466C25.19,13.032,25.648,13.234,26.22,13.234z"
                                />
                                <path d="M30.622,27.4c-0.053,0.075-0.104,0.14-0.156,0.216c-0.312,0.396-1.475,1.795-2.984,2.632   c-0.01,0.004-0.019,0.008-0.024,0.014c-0.132,0.07-0.267,0.123-0.401,0.185c-0.398,0.143-0.771,0.179-0.891,0.188   c-0.339-0.044-0.522-0.281-0.522-0.73c0-0.371,0.108-1.104,0.328-2.205l0.254-1.111l1.035-4.968   c0.168-0.846,0.258-1.316,0.278-1.409l0.226-1.162c0.133-0.719,0.201-1.194,0.201-1.426c0-0.444-0.11-0.781-0.287-1.055   c-0.016-0.04-0.037-0.08-0.066-0.122c-0.026-0.032-0.054-0.06-0.082-0.089c-0.031-0.034-0.046-0.063-0.088-0.098   c-0.441-0.36-0.853-0.464-1.137-0.487l0.005-0.008c0,0-1.867-0.141-4.634,1.682c-0.039,0.026-0.063,0.045-0.1,0.07   c-0.75,0.474-1.348,0.949-1.764,1.332c-0.318,0.272-0.562,0.525-0.744,0.762l-0.009,0.011l0.001-0.001   c-0.235,0.311-0.359,0.593-0.359,0.843c0,0.197,0.159,0.394,0.476,0.591c0,0,1.188-1.534,3.185-2.532   c0.15-0.065,0.534-0.224,0.871-0.312c0.158-0.036,0.455-0.064,0.646,0.093c0.136,0.142,0.226,0.339,0.226,0.646   c0,0.279-0.041,0.618-0.127,1.023l-0.201,0.957l-0.252,1.196l-0.986,4.728c-0.504,2.442-0.757,3.903-0.757,4.379   c0,1.123,0.615,1.685,1.843,1.685c0.557,0,1.13-0.101,1.717-0.281c0.004,0,0.006,0.002,0.01,0.004   c0.04-0.014,0.076-0.029,0.115-0.043c0.098-0.031,0.195-0.068,0.293-0.105c2.771-1.031,4.595-3.108,5.146-3.804   c0.049-0.059,0.091-0.114,0.13-0.167c0.031-0.043,0.051-0.072,0.051-0.072h-0.002c0.14-0.206,0.217-0.377,0.217-0.505   C31.299,27.766,31.068,27.587,30.622,27.4z"
                                />
                                <path d="M18.732,31.873l1.435-1.436l-2.604-2.606l-1.435,1.438c-0.836-0.554-1.768-0.967-2.764-1.226v-2.147H8.74   v2.147c-1.019,0.264-1.973,0.688-2.822,1.26l-1.378-1.378l-2.605,2.603l1.401,1.402c-0.536,0.82-0.938,1.734-1.19,2.708H0v4.62   h2.146c0.258,0.997,0.671,1.932,1.225,2.768l-1.436,1.437l2.605,2.603l1.437-1.436c0.837,0.555,1.773,0.97,2.773,1.228V48h4.605   v-2.143c0.976-0.252,1.892-0.656,2.715-1.192l1.493,1.493l2.604-2.604l-1.47-1.472c0.574-0.854,1-1.814,1.263-2.838h2.143v-4.591   H19.96C19.703,33.652,19.289,32.713,18.732,31.873z M11.051,40.737c-2.092,0-3.788-1.696-3.788-3.788s1.696-3.789,3.788-3.789   s3.789,1.697,3.789,3.789S13.143,40.737,11.051,40.737z"
                                />
                                <path d="M24,0.125C10.814,0.125,0.125,10.814,0.125,24c0,1.757,0.195,3.468,0.555,5.116   c0.968-1.265,2.16-2.344,3.521-3.182C4.14,25.298,4.104,24.653,4.104,24C4.104,13.012,13.012,4.104,24,4.104   S43.896,13.012,43.896,24S34.988,43.896,24,43.896c-0.653,0-1.297-0.036-1.935-0.098c-0.838,1.361-1.917,2.554-3.182,3.521   c1.649,0.36,3.359,0.556,5.116,0.556c13.186,0,23.875-10.689,23.875-23.875S37.186,0.125,24,0.125z"
                                />
                            </g>
                        </svg>
                    </div>
                </div>

                <div class="pop_up_toggle_u_info u_info">
                    <div>Email</div>
                    <div>:${user.email}</div>
                </div>
                <div class="pop_up_toggle_u_info u_info">
                    <div>Age</div>
                    <div>:${user.age}</div>
                </div>
                <div class="pop_up_toggle_u_info u_info">
                    <div>Gender</div>
                    <div>:${user.genderName}</div>
                </div>

                <div class="button-general level-1-3-button level-1-3-button-2 change_password_text_input_box u_info">
                    <div class="level-1-3-button-title">
                        <div>Logout</div>
                    </div>
                    <div class="icon">
                        <?xml version="1.0" ?>
                            <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                <g>
                                    <path d="M0 0h24v24H0z" fill="none" />
                                    <path d="M5 22a1 1 0 0 1-1-1V3a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v3h-2V4H6v16h12v-2h2v3a1 1 0 0 1-1 1H5zm13-6v-3h-7v-2h7V8l5 4-5 4z" />
                                </g>
                            </svg>
                    </div>
                </div>

            </div>
        </div>

    </div>
    <div id="body">
        <div id="side_bar" class="margin-general">
            <div class="i-box-ico ">
                <input type="text" />
                <div class="level-3-button button-general  ">
                    <?xml version="1.0" ?>
                        <svg viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg">
                            <path d="M416 48C416 39.13 408.9 32 400 32h-64C327.1 32 320 39.13 320 48V96h96.04L416 48zM63.88 160.1C61.34 253.9 3.5 274.3 0 404V448c0 17.6 14.4 32 32 32h128c17.6 0 32-14.4 32-32V128H95.88C78.26 128 64.35 142.5 63.88 160.1zM448.1 160.1C447.6 142.5 433.7 128 416.1 128H320v320c0 17.6 14.4 32 32 32h128c17.6 0 32-14.4 32-32v-44C508.5 274.3 450.7 253.9 448.1 160.1zM224 288h64V128H224V288zM176 32h-64C103.1 32 96 39.13 96 48L95.96 96H192V48C192 39.13 184.9 32 176 32z"/>
                        </svg>
                </div>
            </div>
            <div class="i-box-ico ">
                <input type="text" />
                <div class="level-3-button button-general  ">
                    <?xml version="1.0" ?>
                        <svg viewBox="0 0 96 96" xmlns="http://www.w3.org/2000/svg">
                            <title/>
                            <path d="M81.8457,25.3876a6.0239,6.0239,0,0,0-8.45.7676L48,56.6257l-25.396-30.47a5.999,5.999,0,1,0-9.2114,7.6879L43.3943,69.8452a5.9969,5.9969,0,0,0,9.2114,0L82.6074,33.8431A6.0076,6.0076,0,0,0,81.8457,25.3876Z" />
                        </svg>
                </div>
            </div>
            
            <div style="text-align:right;margin-right:8px;margin-top:5px;margin-bottom:5px;">    
                <div class="button-general level-3-button tool level-3-button-1" id="add_page_form">
                    <?xml version="1.0" ?><svg height="24" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg"><path d="M6 22h12a2 2 0 0 0 2-2V8l-6-6H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2zm7-18 5 5h-5V4zM8 14h3v-3h2v3h3v2h-3v3h-2v-3H8v-2z"/></svg>
                </div>
                    
                <div class="button-general level-3-button tool level-3-button-1" id="add_cat_form">
                    <?xml version="1.0" ?><svg height="24" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg"><path d="M20 5h-9.586L8.707 3.293A.997.997 0 0 0 8 3H4c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V7c0-1.103-.897-2-2-2zm-4 9h-3v3h-2v-3H8v-2h3V9h2v3h3v2z"/></svg>
                </div>
            </div>
            <div id="note_categories" class="">
                <!------------------------------note categoary----------------------------------------------------------->
                <div class="note_categoary">
                    <div class="button-general note_categoary_button note_categoary_button_1">
                        <div class="note_categoary_icon_1">
                            <?xml version="1.0" ?>
                                <svg height="48" viewBox="0 0 48 48" width="48" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M20 8h-12c-2.21 0-3.98 1.79-3.98 4l-.02 24c0 2.21 1.79 4 4 4h32c2.21 0 4-1.79 4-4v-20c0-2.21-1.79-4-4-4h-16l-4-4z" />
                                    <path d="M0 0h48v48h-48z" fill="none" />
                                </svg>
                        </div>
                        <div class="note_categoary_title note_categoary_title_1">
                            <div>
                                Chemistry
                            </div>
                        </div>
                    </div>

                    <div class="note_categoary_fold">
                        <div class="button-general note_categoary_button note_categoary_button_2 ">
                            <div class="note_categoary_icon_2">
                                <?xml version="1.0" ?>
                                    <svg height="48" viewBox="0 0 48 48" width="48" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M12 4c-2.21 0-3.98 1.79-3.98 4l-.02 32c0 2.21 1.77 4 3.98 4h24.02c2.21 0 4-1.79 4-4v-24l-12-12h-16zm14 14v-11l11 11h-11z" />
                                        <path d="M0 0h48v48h-48z" fill="none" />
                                    </svg>
                            </div>
                            <div class="note_categoary_title note_categoary_title_2">
                                <div>
                                    bounds
                                </div>
                            </div>
                        </div>

                        <div class="button-general note_categoary_button note_categoary_button_2 ">
                            <div class="note_categoary_icon_2">
                                <?xml version="1.0" ?>
                                    <svg height="48" viewBox="0 0 48 48" width="48" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M12 4c-2.21 0-3.98 1.79-3.98 4l-.02 32c0 2.21 1.77 4 3.98 4h24.02c2.21 0 4-1.79 4-4v-24l-12-12h-16zm14 14v-11l11 11h-11z" />
                                        <path d="M0 0h48v48h-48z" fill="none" />
                                    </svg>
                            </div>
                            <div class="note_categoary_title note_categoary_title_2">
                                <div>
                                    Alcohols Phenols and Ethers
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!---test-->

                <div class="note_categoary">
                    <div class="button-general note_categoary_button note_categoary_button_1">
                        <div class="note_categoary_icon_1">
                            <?xml version="1.0" ?>
                                <svg height="48" viewBox="0 0 48 48" width="48" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M20 8h-12c-2.21 0-3.98 1.79-3.98 4l-.02 24c0 2.21 1.79 4 4 4h32c2.21 0 4-1.79 4-4v-20c0-2.21-1.79-4-4-4h-16l-4-4z" />
                                    <path d="M0 0h48v48h-48z" fill="none" />
                                </svg>
                        </div>
                        <div class="note_categoary_title note_categoary_title_1">
                            <div>
                                Physics
                            </div>
                        </div>
                    </div>

                    <div class="note_categoary_fold">
                        <div class="button-general note_categoary_button note_categoary_button_2 ">
                            <div class="note_categoary_icon_2">
                                <?xml version="1.0" ?>
                                    <svg height="48" viewBox="0 0 48 48" width="48" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M12 4c-2.21 0-3.98 1.79-3.98 4l-.02 32c0 2.21 1.77 4 3.98 4h24.02c2.21 0 4-1.79 4-4v-24l-12-12h-16zm14 14v-11l11 11h-11z" />
                                        <path d="M0 0h48v48h-48z" fill="none" />
                                    </svg>
                            </div>
                            <div class="note_categoary_title note_categoary_title_2">
                                <div>
                                    velocity
                                </div>
                            </div>
                        </div>

                        <div class="button-general note_categoary_button note_categoary_button_2 ">
                            <div class="note_categoary_icon_2">
                                <?xml version="1.0" ?>
                                    <svg height="48" viewBox="0 0 48 48" width="48" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M12 4c-2.21 0-3.98 1.79-3.98 4l-.02 32c0 2.21 1.77 4 3.98 4h24.02c2.21 0 4-1.79 4-4v-24l-12-12h-16zm14 14v-11l11 11h-11z" />
                                        <path d="M0 0h48v48h-48z" fill="none" />
                                    </svg>
                            </div>
                            <div class="note_categoary_title note_categoary_title_2">
                                <div>
                                    force
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <!----------------------------------------------------------------------------------------------------->
            </div>



        </div>
        <div id="note_body">
            <div id="opened_notes">
                <div id="side_bar_toggle" class="button-general level-3-button">
                    <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                        <g>
                            <path d="M0 0h24v24H0z" fill="none" />
                            <path d="M3 3h18a1 1 0 0 1 1 1v16a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V4a1 1 0 0 1 1-1zm6 2v14h11V5H9z" />
                        </g>
                    </svg>
                </div>

                <!--------------------------------------opened note -------------------------------------->
                <div>
                    <span id="nn">
                        Chemistry
                    </span>
                    <span id="is_saved">
                        <?xml version="1.0" ?><svg height="16px" version="1.1" viewBox="0 0 24 16" width="24px" xmlns="http://www.w3.org/2000/svg" xmlns:sketch="http://www.bohemiancoding.com/sketch/ns" xmlns:xlink="http://www.w3.org/1999/xlink"><title/><desc/><defs/><g  fill-rule="evenodd" id="Page-1" stroke="none" stroke-width="1"><g  id="Core" transform="translate(-126.000000, -46.000000)"><g id="backup" transform="translate(126.000000, 46.000000)"><path d="M19.4,6 C18.7,2.6 15.7,0 12,0 C9.1,0 6.6,1.6 5.4,4 C2.3,4.4 0,6.9 0,10 C0,13.3 2.7,16 6,16 L19,16 C21.8,16 24,13.8 24,11 C24,8.4 21.9,6.2 19.4,6 L19.4,6 Z M14,9 L14,13 L10,13 L10,9 L7,9 L12,4 L17,9 L14,9 L14,9 Z" id="Shape"/></g></g></g></svg>
                    </span>
                                     
                </div>
                
                <div id="date">feb.18.2023</div>
                <!-------------------------------------------------------------------------------->
            </div>


            <!-----------------------------------------note---------------------------------------------------------------------->

        <div id="notes">   
<!--            <div class="note">
                <div class="note_number button-general">
                    <div class="number">1</div>
                </div>
                <div class="note_name" contenteditable="true">
                    Spring
                </div>
                <div class="note_content">
                    <div class="nt" contenteditable="true">
                        s          
                    </div>
                </div>
              
            </div>
        -->
        </div>
            <!--------------------------------------------------------------------------------------------------------------------->

           <!------------------------------------------add_new_row button----------------------------------------------------------------------------------------------->
<!--            <div id="add_new_row_button" class="button-general">
                <?xml version="1.0" ?>
                    <svg style="enable-background:new 0 0 24 24;" version="1.1" viewBox="0 0 24 24" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                        <g id="info" />
                        <g id="icons">
                            <path d="M12,1C5.9,1,1,5.9,1,12s4.9,11,11,11s11-4.9,11-11S18.1,1,12,1z M17,14h-3v3c0,1.1-0.9,2-2,2s-2-0.9-2-2v-3H7   c-1.1,0-2-0.9-2-2c0-1.1,0.9-2,2-2h3V7c0-1.1,0.9-2,2-2s2,0.9,2,2v3h3c1.1,0,2,0.9,2,2C19,13.1,18.1,14,17,14z" id="add" />
                        </g>
                    </svg>
            </div>
--!>    
            <!------------------------------------------------------------------------------------------------------>
             
        </div>
    
    </div>
<!--------------------------------note editors----------------------------------->
            <div class="note_editors draggable ui-widget-content"  >

<div class="note_alignment" style="display:inline-block;">
    <div class="draggable_button" >
        <div class="current_tool">
            <div class="button-general level-3-button draggable_button" id="draggable_button">
                <?xml version="1.0" ?><!DOCTYPE svg  PUBLIC '-//W3C//DTD SVG 1.1//EN'  'http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd'><svg height="32px" id="Layer_1" style="enable-background:new 0 0 32 32;" version="1.1" viewBox="0 0 32 32" width="32px" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><path d="M31.338,14.538L27.38,10.58C26.994,10.193,26.531,10,26,10c-1.188,0-2,1.016-2,2c0,0.516,0.186,0.986,0.58,1.38L25.2,14H18  V6.8l0.62,0.62C19.014,7.814,19.484,8,20,8c0.984,0,2-0.813,2-2c0-0.531-0.193-0.994-0.58-1.38l-3.973-3.974  C17.08,0.279,16.729,0,16,0s-1.135,0.334-1.463,0.662L10.58,4.62C10.193,5.006,10,5.469,10,6c0,1.188,1.016,2,2,2  c0.516,0,0.986-0.186,1.38-0.58L14,6.8V14H6.8l0.62-0.62C7.814,12.986,8,12.516,8,12c0-0.984-0.813-2-2-2  c-0.531,0-0.994,0.193-1.38,0.58l-3.958,3.958C0.334,14.866,0,15.271,0,16s0.279,1.08,0.646,1.447L4.62,21.42  C5.006,21.807,5.469,22,6,22c1.188,0,2-1.016,2-2c0-0.516-0.186-0.986-0.58-1.38L6.8,18H14v7.2l-0.62-0.62  C12.986,24.186,12.516,24,12,24c-0.984,0-2,0.813-2,2c0,0.531,0.193,0.994,0.58,1.38l3.957,3.958C14.865,31.666,15.271,32,16,32  s1.08-0.279,1.447-0.646l3.973-3.974C21.807,26.994,22,26.531,22,26c0-1.188-1.016-2-2-2c-0.516,0-0.986,0.186-1.38,0.58L18,25.2V18  h7.2l-0.62,0.62C24.186,19.014,24,19.484,24,20c0,0.984,0.813,2,2,2c0.531,0,0.994-0.193,1.38-0.58l3.974-3.973  C31.721,17.08,32,16.729,32,16S31.666,14.866,31.338,14.538z"/></svg>
            </div>
        </div>
    </div>
    
    <div id="tools">
        <div class="edit">
            <div class="more_tools ">
                
                <div class="button-general level-3-button tool" id="bold_button">
                    <?xml version="1.0" ?><svg viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path d="M3 19V1h8a5 5 0 0 1 3.88 8.16A5.5 5.5 0 0 1 11.5 19H3zm7.5-8H7v5h3.5a2.5 2.5 0 1 0 0-5zM7 4v4h3a2 2 0 1 0 0-4H7z"/></svg>
                </div>
                
                
                <div class="button-general level-3-button tool" id="italic_button">
                    <?xml version="1.0" ?><svg viewBox="0 0 384 512" xmlns="http://www.w3.org/2000/svg"><path d="M384 64.01c0 17.69-14.31 32-32 32h-58.67l-133.3 320H224c17.69 0 32 14.31 32 32s-14.31 32-32 32H32c-17.69 0-32-14.31-32-32s14.31-32 32-32h58.67l133.3-320H160c-17.69 0-32-14.31-32-32s14.31-32 32-32h192C369.7 32.01 384 46.33 384 64.01z"/></svg>
                </div>
                
                
            
            </div>
            <div class="current_tool">
                <div class="button-general level-3-button tool">
                    <?xml version="1.0" ?><svg viewBox="0 0 576 512" xmlns="http://www.w3.org/2000/svg"><path d="M572.52 241.4C518.29 135.59 410.93 64 288 64S57.68 135.64 3.48 241.41a32.35 32.35 0 0 0 0 29.19C57.71 376.41 165.07 448 288 448s230.32-71.64 284.52-177.41a32.35 32.35 0 0 0 0-29.19zM288 400a144 144 0 1 1 144-144 143.93 143.93 0 0 1-144 144zm0-240a95.31 95.31 0 0 0-25.31 3.79 47.85 47.85 0 0 1-66.9 66.9A95.78 95.78 0 1 0 288 160z"/></svg>
                </div>
            </div>
        </div>
        <div class="delete">
            <div class="current_tool">
                <div class="button-general level-3-button tool">
                    <?xml version="1.0" ?><svg id="Icons" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><defs><style>.cls-1{}</style></defs><path class="cls-1" d="M22,4H16V3a3,3,0,0,0-3-3H11A3,3,0,0,0,8,3V4H2A1,1,0,0,0,2,6H4V20a3,3,0,0,0,3,3H17a3,3,0,0,0,3-3V6h2a1,1,0,0,0,0-2ZM10,3a1,1,0,0,1,1-1h2a1,1,0,0,1,1,1V4H10ZM9,18a1,1,0,0,1-2,0V10a1,1,0,0,1,2,0Zm4,0a1,1,0,0,1-2,0V10a1,1,0,0,1,2,0Zm4,0a1,1,0,0,1-2,0V10a1,1,0,0,1,2,0Z"/></svg>
                </div>
            </div>
        </div>
        <div class="add_new_row">

            <div class="more_tools " id="more_tools_add_rem_note">
                
                <div class="button-general level-3-button tool">
                    <?xml version="1.0" ?><svg viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path d="M10 20a10 10 0 1 1 0-20 10 10 0 0 1 0 20zm5-11H5v2h10V9z"/></svg>
                </div>      
            
            </div>


            <div class="current_tool">
                <div class="button-general level-3-button tool" id="add_note_button">
                    <?xml version="1.0" ?><svg style="enable-background:new 0 0 24 24;" version="1.1" viewBox="0 0 24 24" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><g id="info"/><g id="icons"><path d="M12,1C5.9,1,1,5.9,1,12s4.9,11,11,11s11-4.9,11-11S18.1,1,12,1z M17,14h-3v3c0,1.1-0.9,2-2,2s-2-0.9-2-2v-3H7   c-1.1,0-2-0.9-2-2c0-1.1,0.9-2,2-2h3V7c0-1.1,0.9-2,2-2s2,0.9,2,2v3h3c1.1,0,2,0.9,2,2C19,13.1,18.1,14,17,14z" id="add"/></g></svg>
                </div>
            </div>
        </div>
    </div>
</div>
               </div>





<div id="ctpu">
    <div class="ctpu_title add_cat">Add Category</div>
    <div class="ctpu_title add_page">Add Page</div>
    <div class="ctpu_body ">
        
        <div class="ctpu_input_names add_cat" >
          <label for="cat_name">  Name : </label>
        </div>
        <div class="ctpu_input_box add_cat" id>
            <input type="text" id="cat_name">
        </div>

        <div class="ctpu_input_names add_page">
          <label for="cat_select">Select Category : </label>
        </div>
        <div class="ctpu_input_box add_page">
            <input type="text" id="cat_select" >
        </div>

        <div class="ctpu_input_names add_page">
          <label for="page_name">  Name : </label>
        </div>
        <div class="ctpu_input_box add_page">
            <input type="text" id="page_name">
        </div>
    </div>
    <div class="ctpu_buttons ">
        <div class="button-general ctpu_button level-1-button add_cat" id="ctpu_add_cat_button">Add Category</div>
        <div class="button-general ctpu_button level-1-button add_page" id="ctpu_add_page_button">Add Page</div>
        <div class="button-general ctpu_button level-1-button" id="ctpu_cancel_button">Cancel</div>
    </div>
</div>



<!-------------------------------------------------------------------->
</body>

</html>