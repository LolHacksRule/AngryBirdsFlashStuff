package §+3§
{
   public class §7>§
   {
       
      
      public var mName:String;
      
      public var §'O§:Number;
      
      public var §1!G§:Number;
      
      public var §^!W§:Number;
      
      public var §0t§:Number;
      
      public var §1R§:Number;
      
      public var §+4§:Boolean;
      
      public var §2s§:Number;
      
      public var §^>§:Number;
      
      public var §@!Y§:Number;
      
      public var §^5§:Boolean;
      
      public var §!#§:Boolean;
      
      public var §8!>§:Boolean;
      
      public var §?!A§:Array;
      
      public var §!!W§:Boolean;
      
      public var §^!>§:String;
      
      public var §'x§:String;
      
      public function §7>§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean, param7:Boolean, param8:Number, param9:Boolean, param10:Number, param11:Number, param12:Number, param13:Array, param14:Boolean, param15:String, param16:String, param17:Boolean = false)
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         if(_loc18_)
         {
            super();
            while(true)
            {
               this.mName = param1;
               addr230:
               while(true)
               {
                  this.§'O§ = param4;
               }
            }
            addr233:
         }
         loop2:
         while(true)
         {
            this.§1!G§ = param5;
            loop3:
            while(true)
            {
               this.§^!W§ = param3;
               loop4:
               for(; _loc18_; while(!(_loc19_ && param1))
               {
                  this.§?!A§ = param13;
                  §§goto(addr90);
                  §§goto(addr43);
               })
               {
                  §§push(this);
                  §§push(param2);
                  if(_loc18_)
                  {
                     §§push(§§pop() / 1000);
                  }
                  §§pop().§0t§ = §§pop();
                  loop5:
                  while(true)
                  {
                     this.§^5§ = param6;
                     while(true)
                     {
                        if(_loc18_)
                        {
                           if(!_loc18_)
                           {
                              break;
                           }
                           this.§8!>§ = param7;
                           continue loop2;
                        }
                        continue loop5;
                        loop9:
                        while(_loc18_ || this)
                        {
                           this.§2s§ = param10;
                           loop10:
                           while(true)
                           {
                              this.§^>§ = param11;
                              loop11:
                              while(_loc18_)
                              {
                                 this.§@!Y§ = param12;
                                 continue loop4;
                                 loop14:
                                 while(!(_loc19_ && param1))
                                 {
                                    this.§^!>§ = param15;
                                    loop15:
                                    while(true)
                                    {
                                       if(!_loc19_)
                                       {
                                          if(_loc19_)
                                          {
                                             break;
                                          }
                                          this.§'x§ = param16;
                                          while(true)
                                          {
                                             if(_loc18_)
                                             {
                                                continue loop3;
                                             }
                                             continue loop14;
                                             addr64:
                                             this.§!#§ = param17;
                                             if(_loc18_ || param3)
                                             {
                                                if(!_loc19_)
                                                {
                                                   addr36:
                                                   if(!(_loc19_ && param2))
                                                   {
                                                      addr43:
                                                      if(_loc18_ || param2)
                                                      {
                                                         return;
                                                      }
                                                      continue loop4;
                                                   }
                                                   addr90:
                                                   addr90:
                                                   while(!(_loc19_ && this))
                                                   {
                                                      this.§!!W§ = param14;
                                                      continue loop14;
                                                      §§goto(addr36);
                                                   }
                                                   continue loop2;
                                                }
                                                continue loop15;
                                             }
                                          }
                                          continue loop3;
                                       }
                                       continue loop10;
                                    }
                                    while(true)
                                    {
                                       this.§+4§ = param9;
                                       break loop11;
                                    }
                                 }
                              }
                              continue loop9;
                           }
                        }
                     }
                     §§goto(addr233);
                  }
               }
               §§goto(addr230);
            }
         }
      }
      
      public function §3e§() : String
      {
         return this.mName;
      }
      
      public function §=9§() : Number
      {
         return this.§'O§;
      }
      
      public function §]6§() : Number
      {
         return this.§1!G§;
      }
      
      public function §"!D§() : Number
      {
         return this.§0t§;
      }
      
      public function §'$§() : Boolean
      {
         return this.§^5§;
      }
   }
}
