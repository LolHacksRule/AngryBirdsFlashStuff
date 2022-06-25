package §2@§
{
   public class §1!Q§
   {
       
      
      public var mName:String;
      
      public var §"!P§:Number;
      
      public var §+v§:Number;
      
      public var §4t§:Number;
      
      public var § ;§:Number;
      
      public var §?z§:Number;
      
      public var §<!`§:Boolean;
      
      public var §0!8§:Number;
      
      public var §?!q§:Number;
      
      public var §%F§:Number;
      
      public var §,H§:Boolean;
      
      public var §^!T§:Boolean;
      
      public var §-X§:Boolean;
      
      public var §%;§:Array;
      
      public var §2"§:Boolean;
      
      public var §@k§:String;
      
      public var §]!x§:String;
      
      public function §1!Q§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean, param7:Boolean, param8:Number, param9:Boolean, param10:Number, param11:Number, param12:Number, param13:Array, param14:Boolean, param15:String, param16:String, param17:Boolean = false)
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         if(!_loc19_)
         {
            super();
            while(true)
            {
               this.mName = param1;
               while(_loc18_)
               {
                  this.§"!P§ = param4;
                  while(true)
                  {
                     this.§+v§ = param5;
                  }
                  loop13:
                  while(!(_loc19_ && param3))
                  {
                     this.§2"§ = param14;
                     loop14:
                     while(true)
                     {
                        this.§@k§ = param15;
                        addr66:
                        while(true)
                        {
                           if(_loc18_ || this)
                           {
                              if(!_loc18_)
                              {
                                 break;
                              }
                              this.§]!x§ = param16;
                              continue loop14;
                           }
                           addr97:
                           while(true)
                           {
                              this.§%;§ = param13;
                              continue loop13;
                           }
                        }
                        loop6:
                        while(true)
                        {
                           this.§-X§ = param7;
                           loop7:
                           while(true)
                           {
                              if(_loc18_)
                              {
                                 if(_loc19_)
                                 {
                                    break;
                                 }
                                 §§push(this);
                                 if(_loc18_)
                                 {
                                    §§push(param8);
                                    if(_loc18_)
                                    {
                                       if(§§pop() != 0)
                                       {
                                          addr146:
                                          §§push(param8);
                                          if(!_loc19_)
                                          {
                                             addr149:
                                             §§push(Number(§§pop()));
                                             if(_loc18_ || param1)
                                             {
                                             }
                                             addr160:
                                             §§pop().§?z§ = §§pop();
                                             loop8:
                                             for(; !(_loc19_ && param3); while(!(_loc19_ && this))
                                             {
                                                this.§?!q§ = param11;
                                                continue loop7;
                                                if(!(_loc18_ || param2))
                                                {
                                                   continue;
                                                }
                                                this.§^!T§ = param17;
                                                if(_loc19_ && this)
                                                {
                                                   continue loop14;
                                                }
                                                if(!_loc19_)
                                                {
                                                   if(_loc19_)
                                                   {
                                                      continue loop13;
                                                   }
                                                   if(_loc19_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   if(_loc18_)
                                                   {
                                                      return;
                                                   }
                                                   §§goto(addr136);
                                                }
                                                else
                                                {
                                                   §§goto(addr66);
                                                }
                                             })
                                             {
                                                this.§<!`§ = param9;
                                                while(true)
                                                {
                                                   this.§0!8§ = param10;
                                                   continue loop8;
                                                }
                                             }
                                             while(!_loc19_)
                                             {
                                                this.§,H§ = param6;
                                                continue loop6;
                                                §§goto(addr161);
                                             }
                                             addr161:
                                             while(true)
                                             {
                                                §§push(this);
                                                §§push(param2);
                                                if(!(_loc19_ && param3))
                                                {
                                                   §§push(§§pop() / 1000);
                                                }
                                                §§pop().§ ;§ = §§pop();
                                                §§goto(addr206);
                                             }
                                             addr206:
                                             addr213:
                                          }
                                       }
                                       else
                                       {
                                          §§push(Number(1));
                                       }
                                       §§goto(addr160);
                                    }
                                    §§goto(addr149);
                                 }
                                 §§goto(addr146);
                              }
                              addr218:
                              while(true)
                              {
                                 this.§4t§ = param3;
                                 §§goto(addr213);
                              }
                              while(_loc18_ || param3)
                              {
                                 this.§%F§ = param12;
                                 §§goto(addr97);
                              }
                           }
                           §§goto(addr223);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr218);
      }
      
      public function §8§() : String
      {
         return this.mName;
      }
      
      public function §9!5§() : Number
      {
         return this.§"!P§;
      }
      
      public function §,!x§() : Number
      {
         return this.§+v§;
      }
      
      public function §>E§() : Number
      {
         return this.§ ;§;
      }
      
      public function §-_§() : Boolean
      {
         return this.§,H§;
      }
   }
}
