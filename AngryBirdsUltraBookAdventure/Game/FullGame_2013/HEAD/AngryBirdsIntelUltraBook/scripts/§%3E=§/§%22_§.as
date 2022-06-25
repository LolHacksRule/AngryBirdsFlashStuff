package §>=§
{
   public class §"_§
   {
       
      
      public var mName:String;
      
      public var §?!B§:Number;
      
      public var §+!V§:Number;
      
      public var §>!M§:Number;
      
      public var §-]§:Number;
      
      public var §?C§:Number;
      
      public var §6!a§:Boolean;
      
      public var §;!0§:Number;
      
      public var §6!&§:Number;
      
      public var §%!i§:Number;
      
      public var §'3§:Boolean;
      
      public var §7y§:Boolean;
      
      public var §^!]§:Boolean;
      
      public var §'s§:Array;
      
      public var §7,§:Boolean;
      
      public var §6#§:String;
      
      public var §!!`§:String;
      
      public function §"_§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean, param7:Boolean, param8:Number, param9:Boolean, param10:Number, param11:Number, param12:Number, param13:Array, param14:Boolean, param15:String, param16:String, param17:Boolean = false)
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         if(_loc19_ || this)
         {
            super();
            loop0:
            while(true)
            {
               this.mName = param1;
               loop1:
               while(true)
               {
                  this.§?!B§ = param4;
                  loop2:
                  while(true)
                  {
                     this.§+!V§ = param5;
                     while(true)
                     {
                        this.§>!M§ = param3;
                        while(!_loc18_)
                        {
                           continue loop1;
                           while(!(_loc18_ && this))
                           {
                              this.§6#§ = param15;
                              while(true)
                              {
                                 if(!(_loc18_ && param2))
                                 {
                                    if(!_loc19_)
                                    {
                                       break;
                                    }
                                    if(!_loc18_)
                                    {
                                       this.§!!`§ = param16;
                                       continue;
                                    }
                                    continue loop2;
                                 }
                                 loop11:
                                 while(true)
                                 {
                                    if(!(_loc18_ && param2))
                                    {
                                       if(_loc18_)
                                       {
                                          break;
                                       }
                                       continue loop0;
                                    }
                                    addr148:
                                    while(true)
                                    {
                                       this.§6!&§ = param11;
                                       continue loop11;
                                    }
                                 }
                                 addr202:
                                 while(true)
                                 {
                                    §§push(this);
                                    if(_loc19_)
                                    {
                                       §§push(param8);
                                       if(_loc19_ || param3)
                                       {
                                          §§push(§§pop() == 0);
                                          if(_loc19_ || param2)
                                          {
                                             §§push(!§§pop());
                                          }
                                          if(§§pop())
                                          {
                                             addr177:
                                             §§push(param8);
                                             if(_loc19_ || param3)
                                             {
                                                §§push(Number(§§pop()));
                                                if(!(_loc18_ && param2))
                                                {
                                                   addr193:
                                                }
                                             }
                                             §§goto(addr193);
                                          }
                                          else
                                          {
                                             §§push(Number(1));
                                          }
                                          §§pop().§?C§ = §§pop();
                                          loop8:
                                          while(true)
                                          {
                                             this.§6!a§ = param9;
                                             addr153:
                                             while(true)
                                             {
                                                this.§;!0§ = param10;
                                                §§goto(addr148);
                                                addr93:
                                                if(_loc19_ || param1)
                                                {
                                                   continue loop8;
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr193);
                                    }
                                    §§goto(addr177);
                                 }
                              }
                              while(true)
                              {
                                 this.§^!]§ = param7;
                                 §§goto(addr202);
                              }
                              if(_loc18_ && param2)
                              {
                                 continue;
                              }
                              if(_loc19_)
                              {
                                 return;
                              }
                              addr231:
                              while(true)
                              {
                                 this.§'3§ = param6;
                                 §§goto(addr207);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr148);
      }
      
      public function §[!!§() : String
      {
         return this.mName;
      }
      
      public function §5A§() : Number
      {
         return this.§?!B§;
      }
      
      public function §78§() : Number
      {
         return this.§+!V§;
      }
      
      public function §3M§() : Number
      {
         return this.§-]§;
      }
      
      public function §,Q§() : Boolean
      {
         return this.§'3§;
      }
   }
}
