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
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         if(_loc19_)
         {
            super();
            loop0:
            while(true)
            {
               this.mName = param1;
               loop1:
               while(true)
               {
                  this.§"!P§ = param4;
                  loop2:
                  while(true)
                  {
                     this.§+v§ = param5;
                     loop3:
                     while(true)
                     {
                        this.§4t§ = param3;
                        loop4:
                        while(true)
                        {
                           §§push(this);
                           §§push(param2);
                           if(!_loc18_)
                           {
                              §§push(§§pop() / 1000);
                           }
                           §§pop().§ ;§ = §§pop();
                           while(true)
                           {
                              this.§,H§ = param6;
                              loop6:
                              for(; !_loc18_; if(_loc19_ || this)
                              {
                                 continue loop4;
                              })
                              {
                                 this.§-X§ = param7;
                                 loop7:
                                 while(true)
                                 {
                                    §§push(this);
                                    if(_loc19_)
                                    {
                                       §§push(param8);
                                       if(!_loc18_)
                                       {
                                          if(§§pop() != 0)
                                          {
                                             addr148:
                                             §§push(param8);
                                             if(!(_loc18_ && param1))
                                             {
                                                §§push(Number(§§pop()));
                                                if(!_loc19_)
                                                {
                                                }
                                                addr162:
                                                §§pop().§?z§ = §§pop();
                                                while(!_loc18_)
                                                {
                                                   this.§<!`§ = param9;
                                                   loop9:
                                                   while(true)
                                                   {
                                                      this.§0!8§ = param10;
                                                      while(true)
                                                      {
                                                         this.§?!q§ = param11;
                                                         addr124:
                                                         while(!_loc18_)
                                                         {
                                                            if(_loc19_)
                                                            {
                                                               this.§%F§ = param12;
                                                               continue loop2;
                                                            }
                                                            continue loop7;
                                                         }
                                                         continue loop9;
                                                         addr71:
                                                         if(!(_loc18_ && param3))
                                                         {
                                                            continue loop6;
                                                         }
                                                      }
                                                   }
                                                }
                                                continue loop3;
                                                addr163:
                                             }
                                          }
                                          else
                                          {
                                             §§push(Number(1));
                                          }
                                       }
                                       §§goto(addr162);
                                    }
                                    §§goto(addr148);
                                 }
                              }
                           }
                           if(_loc18_ && param2)
                           {
                              continue;
                           }
                           this.§@k§ = param15;
                           while(_loc19_)
                           {
                              if(!_loc18_)
                              {
                                 this.§]!x§ = param16;
                                 loop16:
                                 do
                                 {
                                    if(_loc18_ && param1)
                                    {
                                       while(true)
                                       {
                                          this.§2"§ = param14;
                                          addr69:
                                          while(!_loc18_)
                                          {
                                             §§goto(addr71);
                                          }
                                          §§goto(addr124);
                                          continue loop16;
                                       }
                                       return;
                                    }
                                    addr107:
                                    addr41:
                                 }
                                 while(_loc19_);
                                 
                                 continue loop2;
                              }
                              continue loop1;
                              if(_loc18_ && param1)
                              {
                                 continue;
                              }
                              if(!_loc18_)
                              {
                                 if(!_loc19_)
                                 {
                                    continue loop0;
                                 }
                                 §§goto(addr41);
                              }
                              else
                              {
                                 §§goto(addr69);
                              }
                           }
                           §§goto(addr163);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr107);
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
