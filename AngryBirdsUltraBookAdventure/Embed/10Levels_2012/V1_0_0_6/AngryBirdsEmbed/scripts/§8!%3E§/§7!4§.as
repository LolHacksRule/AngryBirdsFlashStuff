package §8!>§
{
   public class §7!4§
   {
       
      
      public var mName:String;
      
      public var §"f§:Number;
      
      public var §1!1§:Number;
      
      public var §&!C§:Number;
      
      public var §#A§:Number;
      
      public var §]H§:Number;
      
      public var § !"§:Boolean;
      
      public var §6_§:Number;
      
      public var §74§:Number;
      
      public var §;!"§:Number;
      
      public var §94§:Boolean;
      
      public var §8J§:Boolean;
      
      public var §?%§:Boolean;
      
      public var §9'§:Array;
      
      public var §<!%§:Boolean;
      
      public var §0^§:String;
      
      public var §+<§:String;
      
      public function §7!4§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean, param7:Boolean, param8:Number, param9:Boolean, param10:Number, param11:Number, param12:Number, param13:Array, param14:Boolean, param15:String, param16:String, param17:Boolean = false)
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         if(!(_loc19_ && param2))
         {
            super();
            this.mName = param1;
         }
         this.§"f§ = param4;
         this.§1!1§ = param5;
         if(_loc18_)
         {
            this.§&!C§ = param3;
            if(!_loc19_)
            {
               §§push(this);
               §§push(param2);
               if(!_loc19_)
               {
                  §§push(§§pop() / 1000);
               }
               §§pop().§#A§ = §§pop();
               this.§94§ = param6;
               if(!(_loc19_ && param1))
               {
                  this.§?%§ = param7;
                  if(_loc18_ || param3)
                  {
                     §§push(this);
                     if(!_loc19_)
                     {
                        §§push(param8);
                        if(!(_loc19_ && param2))
                        {
                           if(§§pop() != 0)
                           {
                              addr91:
                              §§push(param8);
                              if(!(_loc19_ && param2))
                              {
                                 addr99:
                                 §§push(Number(§§pop()));
                                 if(!_loc18_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push(Number(1));
                           }
                           §§pop().§]H§ = §§pop();
                           if(!(_loc19_ && param2))
                           {
                              addr113:
                              this.§ !"§ = param9;
                              this.§6_§ = param10;
                              if(!_loc19_)
                              {
                                 this.§74§ = param11;
                                 if(!(_loc19_ && this))
                                 {
                                    this.§;!"§ = param12;
                                    if(_loc18_ || param2)
                                    {
                                       this.§9'§ = param13;
                                       if(!(_loc19_ && param3))
                                       {
                                          addr161:
                                          this.§<!%§ = param14;
                                          if(!(_loc19_ && param3))
                                          {
                                             this.§0^§ = param15;
                                             if(_loc18_)
                                             {
                                                addr176:
                                                this.§+<§ = param16;
                                                addr179:
                                                this.§8J§ = param17;
                                             }
                                          }
                                       }
                                       return;
                                    }
                                    §§goto(addr179);
                                 }
                              }
                              §§goto(addr179);
                           }
                           §§goto(addr176);
                        }
                        §§goto(addr99);
                     }
                     §§goto(addr91);
                  }
                  §§goto(addr113);
               }
               §§goto(addr161);
            }
            §§goto(addr113);
         }
         §§goto(addr176);
      }
      
      public function §8T§() : String
      {
         return this.mName;
      }
      
      public function §8q§() : Number
      {
         return this.§"f§;
      }
      
      public function §7@§() : Number
      {
         return this.§1!1§;
      }
      
      public function §@!-§() : Number
      {
         return this.§#A§;
      }
      
      public function §!!&§() : Boolean
      {
         return this.§94§;
      }
   }
}
