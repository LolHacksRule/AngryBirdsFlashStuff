package §+!r§
{
   public class §'!S§
   {
       
      
      public var mName:String;
      
      public var §2!h§:Number;
      
      public var §"U§:Number;
      
      public var §'!k§:Number;
      
      public var §9j§:Number;
      
      public var §!+§:Number;
      
      public var §5!=§:Boolean;
      
      public var §+5§:Number;
      
      public var §#!;§:Number;
      
      public var §5!B§:Number;
      
      public var §]K§:Boolean;
      
      public var §"2§:Boolean;
      
      public var §+P§:Boolean;
      
      public var § !N§:Array;
      
      public var §,!"§:Boolean;
      
      public var §'5§:String;
      
      public var §'t§:String;
      
      public function §'!S§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean, param7:Boolean, param8:Number, param9:Boolean, param10:Number, param11:Number, param12:Number, param13:Array, param14:Boolean, param15:String, param16:String, param17:Boolean = false)
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         if(!_loc19_)
         {
            super();
            loop0:
            while(true)
            {
               this.mName = param1;
               loop1:
               while(true)
               {
                  this.§2!h§ = param4;
                  loop2:
                  while(true)
                  {
                     this.§"U§ = param5;
                     addr87:
                     if(_loc19_ && param3)
                     {
                        continue;
                     }
                     this.§'5§ = param15;
                     do
                     {
                        this.§'t§ = param16;
                        loop16:
                        while(true)
                        {
                           if(_loc18_ || param1)
                           {
                              if(!_loc18_)
                              {
                                 break;
                              }
                              if(!_loc19_)
                              {
                                 continue;
                              }
                              continue loop0;
                           }
                           loop13:
                           while(!_loc19_)
                           {
                              this.§,!"§ = param14;
                              while(true)
                              {
                                 if(_loc18_)
                                 {
                                    addr73:
                                    if(_loc18_ || param2)
                                    {
                                       addr80:
                                       if(!(_loc19_ && param1))
                                       {
                                          §§goto(addr87);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             this.§]K§ = param6;
                                             break loop13;
                                             §§goto(addr80);
                                          }
                                          addr205:
                                       }
                                    }
                                    while(true)
                                    {
                                       this.§5!B§ = param12;
                                       §§goto(addr73);
                                    }
                                    addr123:
                                 }
                                 while(_loc18_)
                                 {
                                    this.§ !N§ = param13;
                                    continue loop16;
                                 }
                                 addr128:
                                 addr174:
                                 while(_loc18_ || this)
                                 {
                                    this.§#!;§ = param11;
                                    §§goto(addr123);
                                 }
                                 while(true)
                                 {
                                    §§push(this);
                                    if(_loc18_ || param1)
                                    {
                                       §§push(param8);
                                       if(_loc18_)
                                       {
                                          if(§§pop() != 0)
                                          {
                                             addr159:
                                             §§push(param8);
                                             if(_loc18_)
                                             {
                                                addr162:
                                                §§push(Number(§§pop()));
                                                if(_loc19_)
                                                {
                                                }
                                                addr168:
                                                §§pop().§!+§ = §§pop();
                                                while(true)
                                                {
                                                   this.§5!=§ = param9;
                                                   break loop16;
                                                   addr38:
                                                   if(_loc18_ || param3)
                                                   {
                                                      return;
                                                   }
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§push(Number(1));
                                          }
                                          §§goto(addr168);
                                       }
                                       §§goto(addr162);
                                    }
                                    §§goto(addr159);
                                    §§goto(addr128);
                                 }
                              }
                              continue loop2;
                           }
                           addr179:
                           addr215:
                           while(_loc18_ || param2)
                           {
                              this.§+P§ = param7;
                              §§goto(addr174);
                           }
                           while(true)
                           {
                              this.§'!k§ = param3;
                              addr210:
                              while(true)
                              {
                                 §§push(this);
                                 §§push(param2);
                                 if(_loc18_)
                                 {
                                    §§push(§§pop() / 1000);
                                 }
                                 §§pop().§9j§ = §§pop();
                                 §§goto(addr205);
                              }
                              §§goto(addr179);
                           }
                        }
                        while(!_loc19_)
                        {
                           if(!_loc18_)
                           {
                              continue loop1;
                           }
                           this.§+5§ = param10;
                           §§goto(addr128);
                        }
                        §§goto(addr210);
                     }
                     while(_loc19_);
                     
                     if(_loc18_)
                     {
                        §§goto(addr38);
                     }
                     §§goto(addr71);
                  }
               }
            }
         }
         §§goto(addr215);
      }
      
      public function §?!M§() : String
      {
         return this.mName;
      }
      
      public function §+@§() : Number
      {
         return this.§2!h§;
      }
      
      public function §2B§() : Number
      {
         return this.§"U§;
      }
      
      public function §6!=§() : Number
      {
         return this.§9j§;
      }
      
      public function §>!g§() : Boolean
      {
         return this.§]K§;
      }
   }
}
