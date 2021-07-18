package §9I§
{
   import §'!N§.§[!%§;
   import §5!1§.§"!X§;
   import §5!1§.§&[§;
   import §8P§.§&-§;
   import §<u§.§]!Q§;
   
   public class §1F§
   {
      
      public static const NICKNAME_LENGTH:String = "NICKNAME_LENGTH";
      
      public static const PASSWORD_LENGTH:String = "PASSWORD_LENGTH";
      
      public static const PASSWORDS_DONT_MATCH:String = "PASSWORDS_DONT_MATCH";
      
      public static const INVALID_EMAIL:String = "INVALID_EMAIL";
      
      public static const PASSWORD_MISSING:String = "PASSWORD_MISSING";
      
      public static const CONNECTION_ERROR_RETRY:String = "CONNECTION_ERROR_RETRY";
      
      public static const FORGOT_PASSWORD_EMAIL_SENT:String = "FORGOT_PASSWORD_EMAIL_SENT";
      
      public static const PLAYER_ID_USED:String = "PLAYER_ID_USED";
      
      public static const PLAYER_REQUIRED:String = "PLAYER_REQUIRED";
      
      public static const PLAYER_INVALID_LOGIN:String = "PLAYER_INVALID_LOGIN";
      
      public static const PLAYER_BANNED:String = "PLAYER_BANNED";
      
      public static const IP_BANNED:String = "IP_BANNED";
      
      public static const FIELD_NOT_VALID:String = "FIELD_NOT_VALID";
      
      public static const FIELD_OBLIGATORY:String = "FIELD_OBLIGATORY";
      
      public static const FIELD_LENGTH:String = "FIELD_LENGTH";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            NICKNAME_LENGTH = "NICKNAME_LENGTH";
            loop0:
            while(true)
            {
               PASSWORD_LENGTH = "PASSWORD_LENGTH";
               while(true)
               {
                  PASSWORDS_DONT_MATCH = "PASSWORDS_DONT_MATCH";
                  loop2:
                  while(true)
                  {
                     INVALID_EMAIL = "INVALID_EMAIL";
                     loop3:
                     while(true)
                     {
                        PASSWORD_MISSING = "PASSWORD_MISSING";
                        while(true)
                        {
                           CONNECTION_ERROR_RETRY = "CONNECTION_ERROR_RETRY";
                           continue loop2;
                           addr76:
                           loop11:
                           while(!(_loc2_ && _loc2_))
                           {
                              FIELD_NOT_VALID = "FIELD_NOT_VALID";
                              loop12:
                              for(; !(_loc2_ && §1F§); loop13:
                              while(!(_loc2_ && §1F§))
                              {
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    while(true)
                                    {
                                       FIELD_LENGTH = "FIELD_LENGTH";
                                       if(!_loc2_)
                                       {
                                          if(_loc1_)
                                          {
                                             break;
                                          }
                                          continue loop11;
                                       }
                                       continue loop13;
                                    }
                                    return;
                                    continue;
                                 }
                                 continue loop2;
                              })
                              {
                                 addr62:
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    if(_loc1_)
                                    {
                                       FIELD_OBLIGATORY = "FIELD_OBLIGATORY";
                                       continue;
                                    }
                                    addr153:
                                    while(true)
                                    {
                                       PLAYER_ID_USED = "PLAYER_ID_USED";
                                       continue loop0;
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       PLAYER_INVALID_LOGIN = "PLAYER_INVALID_LOGIN";
                                       addr124:
                                       while(!(_loc2_ && _loc1_))
                                       {
                                          PLAYER_BANNED = "PLAYER_BANNED";
                                          break loop12;
                                       }
                                       continue loop0;
                                       §§goto(addr62);
                                    }
                                    addr136:
                                 }
                              }
                              while(!(_loc2_ && §1F§))
                              {
                                 continue loop3;
                                 §§goto(addr55);
                              }
                              addr55:
                              §§goto(addr124);
                           }
                        }
                     }
                  }
                  if(_loc2_ && §1F§)
                  {
                     continue;
                  }
                  IP_BANNED = "IP_BANNED";
                  §§goto(addr76);
               }
            }
         }
         §§goto(addr50);
      }
      
      private var §^,§:§&[§;
      
      private var §-U§:Number;
      
      private var §%,§:Number;
      
      private var §`G§:Boolean = false;
      
      private var §>K§:§]!Q§;
      
      public function §1F§(param1:§]!Q§, param2:Number = 0)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super();
            while(true)
            {
               this.§>K§ = param1;
               loop1:
               while(_loc3_ || param1)
               {
                  this.§-U§ = this.§>K§.getItemByName("Container_ErrorPane").y;
                  while(true)
                  {
                     this.§%,§ = param2;
                     if(_loc3_ || param1)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr65);
      }
      
      public function show(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(!this.§`G§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§^,§);
                  if(!(_loc3_ && this))
                  {
                     if(§§pop())
                     {
                        loop1:
                        while(true)
                        {
                           §§push(this.§^,§);
                           addr157:
                           while(true)
                           {
                              §§pop().stop();
                              addr158:
                              while(true)
                              {
                              }
                           }
                           loop4:
                           while(true)
                           {
                              if(!(_loc2_ || this))
                              {
                                 continue loop1;
                              }
                              this.§^,§ = §"!X§.§ s§.§%!;§(this.§>K§.getItemByName("Container_ErrorPane"),{"y":this.§%,§},{"y":this.§-U§},0.25,§"!X§.§@4§);
                              loop5:
                              while(_loc2_)
                              {
                                 if(!_loc3_)
                                 {
                                    §§push(this.§^,§);
                                    if(!(_loc2_ || this))
                                    {
                                       break loop4;
                                    }
                                    §§pop().play();
                                    loop6:
                                    while(_loc2_ || this)
                                    {
                                       this.§`G§ = true;
                                       loop7:
                                       while(true)
                                       {
                                          if(_loc2_)
                                          {
                                             if(!_loc3_)
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§>K§);
                                                   if(_loc2_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   addr116:
                                                   while(true)
                                                   {
                                                      (§§pop().getItemByName("TextField_ErrorMessage") as §[!%§).setText(§]0§.getText(param1));
                                                      break loop6;
                                                   }
                                                }
                                                return;
                                                addr48:
                                                addr28:
                                             }
                                             break;
                                          }
                                          continue loop6;
                                       }
                                       continue loop5;
                                    }
                                    continue loop4;
                                 }
                                 continue loop0;
                              }
                              §§goto(addr158);
                           }
                           §§goto(addr157);
                        }
                     }
                     while(true)
                     {
                        §§goto(addr116);
                        §§goto(addr158);
                     }
                  }
                  §§goto(addr157);
               }
            }
            §§goto(addr28);
         }
         §§goto(addr48);
      }
      
      public function hide() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(this.§`G§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§^,§);
                  if(!_loc1_)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(this.§^,§);
                           addr129:
                           while(true)
                           {
                              §§pop().stop();
                              addr130:
                              while(true)
                              {
                              }
                           }
                        }
                        addr127:
                     }
                     loop2:
                     while(true)
                     {
                        (this.§>K§.getItemByName("TextField_ErrorMessage") as §[!%§).setText("");
                        loop3:
                        while(true)
                        {
                           this.§^,§ = §"!X§.§ s§.§%!;§(this.§>K§.getItemByName("Container_ErrorPane"),{"y":this.§-U§},{"y":0},0.25,§"!X§.§@4§);
                           loop4:
                           while(!(_loc1_ && this))
                           {
                              if(_loc2_)
                              {
                                 while(true)
                                 {
                                    §§push(this.§^,§);
                                    if(!_loc1_)
                                    {
                                       §§pop().play();
                                       while(_loc2_ || this)
                                       {
                                          this.§`G§ = false;
                                          if(!_loc1_)
                                          {
                                             if(!_loc1_)
                                             {
                                                continue loop0;
                                             }
                                             continue loop4;
                                          }
                                       }
                                       continue loop3;
                                    }
                                 }
                                 addr25:
                                 return;
                                 addr44:
                                 addr98:
                              }
                              §§goto(addr127);
                           }
                           continue loop2;
                        }
                     }
                  }
                  §§goto(addr129);
               }
            }
            §§goto(addr25);
         }
         §§goto(addr98);
      }
   }
}
