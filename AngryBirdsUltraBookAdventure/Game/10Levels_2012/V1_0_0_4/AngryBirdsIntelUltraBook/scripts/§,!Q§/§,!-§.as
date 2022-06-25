package §,!Q§
{
   public class §,!-§
   {
       
      
      public var mName:String;
      
      public var §7t§:Number;
      
      public var §"!-§:Number;
      
      public var §%!v§:Number;
      
      public var §5y§:Number;
      
      public var §'8§:Number;
      
      public var §;9§:Boolean;
      
      public var § !F§:Number;
      
      public var §!b§:Number;
      
      public var §1!M§:Number;
      
      public var §%y§:Boolean;
      
      public var §^!%§:Boolean;
      
      public var §4!$§:Boolean;
      
      public var §@B§:Array;
      
      public var §;!^§:Boolean;
      
      public var §=!c§:String;
      
      public var §%!§:String;
      
      public function §,!-§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean, param7:Boolean, param8:Number, param9:Boolean, param10:Number, param11:Number, param12:Number, param13:Array, param14:Boolean, param15:String, param16:String, param17:Boolean = false)
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         if(_loc19_ || param1)
         {
            super();
            loop0:
            while(true)
            {
               this.mName = param1;
               loop1:
               while(true)
               {
                  this.§7t§ = param4;
                  loop2:
                  while(true)
                  {
                     this.§"!-§ = param5;
                     loop3:
                     while(true)
                     {
                        this.§%!v§ = param3;
                        loop4:
                        while(_loc19_)
                        {
                           §§push(this);
                           §§push(param2);
                           if(_loc19_)
                           {
                              §§push(§§pop() / 1000);
                           }
                           §§pop().§5y§ = §§pop();
                           while(!_loc18_)
                           {
                              this.§%y§ = param6;
                              while(!(_loc18_ && param2))
                              {
                                 this.§4!$§ = param7;
                                 loop7:
                                 while(_loc19_)
                                 {
                                    §§push(this);
                                    if(_loc19_)
                                    {
                                       §§push(param8);
                                       if(!_loc18_)
                                       {
                                          if(§§pop() != 0)
                                          {
                                             addr149:
                                             §§push(param8);
                                             if(!(_loc18_ && param2))
                                             {
                                                §§push(Number(§§pop()));
                                                if(!(_loc18_ && param1))
                                                {
                                                   addr165:
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§push(Number(1));
                                          }
                                          §§pop().§'8§ = §§pop();
                                          while(true)
                                          {
                                             this.§;9§ = param9;
                                             loop9:
                                             while(_loc19_)
                                             {
                                                this.§ !F§ = param10;
                                                while(true)
                                                {
                                                   this.§!b§ = param11;
                                                   addr118:
                                                   while(_loc19_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   continue loop9;
                                                }
                                             }
                                             continue loop7;
                                             addr96:
                                             loop12:
                                             while(_loc19_ || this)
                                             {
                                                while(true)
                                                {
                                                   this.§@B§ = param13;
                                                   loop14:
                                                   while(_loc19_)
                                                   {
                                                      this.§;!^§ = param14;
                                                      while(true)
                                                      {
                                                         if(_loc19_)
                                                         {
                                                            if(!_loc19_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop2;
                                                         }
                                                         continue loop14;
                                                         addr61:
                                                         loop16:
                                                         while(!(_loc18_ && this))
                                                         {
                                                            this.§%!§ = param16;
                                                            while(true)
                                                            {
                                                               if(!(_loc18_ && this))
                                                               {
                                                                  if(_loc18_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue;
                                                               }
                                                               continue loop16;
                                                            }
                                                            §§goto(addr132);
                                                         }
                                                      }
                                                      §§goto(addr118);
                                                   }
                                                   continue loop12;
                                                }
                                                return;
                                             }
                                          }
                                       }
                                       §§goto(addr165);
                                    }
                                    §§goto(addr149);
                                 }
                                 continue loop4;
                                 if(_loc18_ && param1)
                                 {
                                    continue;
                                 }
                                 §§goto(addr42);
                              }
                           }
                           continue loop3;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr113);
      }
      
      public function §=!U§() : String
      {
         return this.mName;
      }
      
      public function §6v§() : Number
      {
         return this.§7t§;
      }
      
      public function §^-§() : Number
      {
         return this.§"!-§;
      }
      
      public function §7Z§() : Number
      {
         return this.§5y§;
      }
      
      public function §6!"§() : Boolean
      {
         return this.§%y§;
      }
   }
}
