package §"!&§
{
   public class §"v§ extends §`D§
   {
       
      
      protected var §"!z§:Array;
      
      protected var § e§:String;
      
      protected var §5W§:Number;
      
      protected var §+"&§:Number;
      
      protected var §=6§:Number;
      
      protected var §#x§:Number;
      
      protected var §;"2§:Number;
      
      protected var §]!t§:Number;
      
      protected var §-"2§:Number;
      
      protected var §!a§:Number;
      
      protected var §1!?§:Number;
      
      protected var §'6§:Number;
      
      protected var §%=§:Number;
      
      protected var §!!3§:Number;
      
      protected var §@]§:Number;
      
      protected var §>"3§:Number;
      
      protected var §^!>§:Number;
      
      protected var §@"3§:Number;
      
      protected var §]!k§:String;
      
      public function §"v§(param1:Object, param2:int, param3:§<s§, param4:§=C§, param5:int, param6:Boolean = false)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param2))
         {
            super(param1,param2,param3,param4,param5,param6);
            loop0:
            while(true)
            {
               this.§"!z§ = this.§5!H§(param1.sprites);
               addr253:
               while(true)
               {
                  this.§ e§ = param1.sheet;
                  continue loop0;
               }
            }
         }
         §§goto(addr80);
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc4_:String = null;
         var _loc1_:Array = [];
         var _loc2_:Array = [];
         if(_loc7_)
         {
            if(this.§"!z§.length > 0)
            {
               if(_loc7_ || this)
               {
                  §§push(this.§1!?§);
                  if(_loc7_ || _loc3_)
                  {
                     §§push(§§pop() * 1000);
                     if(!_loc8_)
                     {
                        §§push(§§pop() / this.§"!z§.length);
                        if(_loc8_ && _loc3_)
                        {
                        }
                        addr76:
                        _loc3_ = §§pop();
                        loop0:
                        for each(_loc4_ in this.§"!z§)
                        {
                           loop1:
                           while(true)
                           {
                              while(true)
                              {
                                 _loc1_.push(_loc4_);
                                 do
                                 {
                                    _loc2_.push(_loc3_);
                                 }
                                 while(!(_loc7_ || _loc2_));
                                 
                                 if(!_loc8_)
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 continue loop1;
                              }
                              continue loop0;
                           }
                        }
                        §§push(["1",_loc1_,_loc2_]);
                        if(!(_loc8_ && this))
                        {
                           §§push(null);
                        }
                        return §§pop();
                        addr77:
                     }
                     §§push(Number(§§pop()));
                  }
                  §§goto(addr76);
               }
               §§goto(addr77);
            }
         }
         §§goto(addr76);
      }
      
      protected function get §%m§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§"!z§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && this))
                  {
                     §§goto(addr57);
                  }
               }
               return 0;
            }
            §§goto(addr57);
         }
         addr57:
         return this.§"!z§.length;
      }
      
      protected function §&!#§(param1:int) : String
      {
         return this.§"!z§[param1];
      }
      
      private function §5!H§(param1:*) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:Array = null;
         var _loc3_:Object = null;
         if(_loc6_ || this)
         {
            §§push(param1 is String);
            if(!(_loc7_ && param1))
            {
               if(§§pop())
               {
                  if(_loc6_)
                  {
                     addr42:
                     §§push([param1]);
                     if(_loc6_ || _loc3_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr95:
                     §§push([]);
                  }
                  _loc2_ = §§pop();
                  for each(_loc3_ in param1)
                  {
                     if(!(_loc7_ && _loc3_))
                     {
                        _loc2_.push(_loc3_);
                     }
                  }
                  if(_loc6_)
                  {
                     return _loc2_;
                  }
               }
               else
               {
                  §§push(param1 is Array);
                  if(_loc6_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc6_ || _loc2_)
                        {
                           return param1;
                        }
                     }
                     addr94:
                     if(param1 is Object)
                     {
                        §§goto(addr95);
                     }
                  }
                  §§goto(addr94);
               }
               return [];
            }
            §§goto(addr94);
         }
         §§goto(addr42);
      }
      
      public function get lifeTime() : Number
      {
         return this.§1!?§;
      }
      
      public function get minScaleBegin() : Number
      {
         return this.§;"2§;
      }
      
      public function get maxScaleBegin() : Number
      {
         return this.§]!t§;
      }
      
      public function get minScaleEnd() : Number
      {
         return this.§-"2§;
      }
      
      public function get maxScaleEnd() : Number
      {
         return this.§!a§;
      }
      
      public function get minAngle() : Number
      {
         return this.§>"3§;
      }
      
      public function get maxAngle() : Number
      {
         return this.§^!>§;
      }
      
      public function get minAngleVel() : Number
      {
         return this.§=6§;
      }
      
      public function get maxAngleVel() : Number
      {
         return this.§#x§;
      }
      
      public function get amount() : Number
      {
         return this.§@"3§;
      }
      
      public function get minVel() : Number
      {
         return this.§5W§;
      }
      
      public function get maxVel() : Number
      {
         return this.§+"&§;
      }
      
      public function get minAngleEmitter() : Number
      {
         return this.§!!3§;
      }
      
      public function get maxAngleEmitter() : Number
      {
         return this.§@]§;
      }
      
      public function get animation() : String
      {
         return this.§]!k§;
      }
      
      public function get gravityX() : Number
      {
         return this.§'6§;
      }
      
      public function get gravityY() : Number
      {
         return this.§%=§;
      }
   }
}
