package §[m§
{
   public class §#c§
   {
       
      
      public var mName:String;
      
      public var §#!P§:Number;
      
      public var §#d§:Number;
      
      public var §1!T§:Number;
      
      public var §8%§:Number;
      
      public var §7!H§:Number;
      
      public var §continue§:Boolean;
      
      public var §@!?§:Number;
      
      public var §%!E§:Number;
      
      public var §=#§:Number;
      
      public var §,!h§:Boolean;
      
      public var §`>§:Boolean;
      
      public var §;!#§:Boolean;
      
      public var §2!U§:Array;
      
      public var §#!E§:Boolean;
      
      public var §,!1§:String;
      
      public var §5E§:String;
      
      public function §#c§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean, param7:Boolean, param8:Number, param9:Boolean, param10:Number, param11:Number, param12:Number, param13:Array, param14:Boolean, param15:String, param16:String, param17:Boolean = false)
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
               while(true)
               {
                  this.§#!P§ = param4;
                  while(_loc19_ || this)
                  {
                     this.§#d§ = param5;
                     while(true)
                     {
                        this.§1!T§ = param3;
                        while(true)
                        {
                           §§push(this);
                           §§push(param2);
                           if(_loc19_)
                           {
                              §§push(§§pop() / 1000);
                           }
                           §§pop().§8%§ = §§pop();
                           while(true)
                           {
                              this.§,!h§ = param6;
                              while(true)
                              {
                                 this.§;!#§ = param7;
                                 while(true)
                                 {
                                    §§push(this);
                                    if(_loc19_)
                                    {
                                       §§push(param8);
                                       if(_loc19_ || param2)
                                       {
                                          §§push(§§pop() == 0);
                                          if(!_loc18_)
                                          {
                                             §§push(!§§pop());
                                          }
                                          if(§§pop())
                                          {
                                             addr163:
                                             §§push(param8);
                                             if(_loc19_ || param3)
                                             {
                                                §§push(Number(§§pop()));
                                                if(_loc18_ && param1)
                                                {
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§push(Number(1));
                                          }
                                       }
                                       §§pop().§7!H§ = §§pop();
                                       continue;
                                    }
                                    §§goto(addr163);
                                 }
                                 if(_loc18_ && param2)
                                 {
                                    continue;
                                 }
                                 §§goto(addr60);
                              }
                           }
                           if(_loc18_ && param3)
                           {
                              continue;
                           }
                           this.§continue§ = param9;
                           §§goto(addr144);
                        }
                        if(_loc19_ || param2)
                        {
                           return;
                        }
                     }
                     while(!(_loc18_ && param1))
                     {
                        if(_loc19_)
                        {
                           this.§2!U§ = param13;
                           §§goto(addr98);
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr144);
      }
      
      public function § !;§() : String
      {
         return this.mName;
      }
      
      public function §[!5§() : Number
      {
         return this.§#!P§;
      }
      
      public function §'!0§() : Number
      {
         return this.§#d§;
      }
      
      public function §#!T§() : Number
      {
         return this.§8%§;
      }
      
      public function §+!"§() : Boolean
      {
         return this.§,!h§;
      }
   }
}
