package §2"Y§
{
   public class §1#K§ extends §["$§
   {
       
      
      protected var §0!E§:Array;
      
      protected var §>">§:String;
      
      protected var §<#9§:Number;
      
      protected var §7"y§:Number;
      
      protected var §7"K§:Number;
      
      protected var §#!J§:Number;
      
      protected var §+"=§:Number;
      
      protected var §?"+§:Number;
      
      protected var §4"M§:Number;
      
      protected var §""!§:Number;
      
      protected var §5"v§:Number;
      
      protected var §6"C§:Number;
      
      protected var §=!]§:Number;
      
      protected var §<"%§:Number;
      
      protected var §>"q§:Number;
      
      protected var §`"K§:Number;
      
      protected var §+Z§:Number;
      
      protected var §>2§:Number;
      
      protected var §]!`§:String;
      
      public function §1#K§(param1:Object, param2:int, param3:§&!x§, param4:§'#2§, param5:int, param6:Boolean = false)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            super(param1,param2,param3,param4,param5,param6);
            while(true)
            {
               this.§0!E§ = this.§^!h§(param1.sprites);
               loop1:
               while(true)
               {
                  this.§>">§ = param1.sheet;
                  addr226:
                  while(true)
                  {
                     this.§<#9§ = param1.minVel;
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            this.§6"C§ = param1.gravityX;
            §§goto(addr146);
         }
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc4_:String = null;
         var _loc1_:Array = [];
         var _loc2_:Array = [];
         if(!(_loc8_ && this))
         {
            if(this.§0!E§.length > 0)
            {
               if(_loc7_ || this)
               {
                  §§push(this.§5"v§);
                  if(_loc7_ || _loc3_)
                  {
                     §§push(§§pop() * 1000);
                     if(_loc7_)
                     {
                        §§push(§§pop() / this.§0!E§.length);
                        if(_loc7_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                  }
                  _loc3_ = §§pop();
                  loop0:
                  for each(_loc4_ in this.§0!E§)
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
                           while(!_loc7_);
                           
                           if(_loc7_)
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
                  addr77:
               }
               §§goto(addr77);
            }
            §§push(["1",_loc1_,_loc2_]);
            if(!_loc8_)
            {
               return null;
            }
         }
         §§goto(addr77);
      }
      
      protected function get §%#A§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§0!E§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     §§push(this.§0!E§);
                  }
                  else
                  {
                     §§goto(addr55);
                  }
               }
               §§goto(addr55);
            }
            return §§pop().length;
         }
         addr55:
         return 0;
      }
      
      protected function § !D§(param1:int) : String
      {
         return this.§0!E§[param1];
      }
      
      private function §^!h§(param1:*) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:Array = null;
         var _loc3_:Object = null;
         if(!_loc7_)
         {
            §§push(param1 is String);
            if(!_loc7_)
            {
               if(§§pop())
               {
                  if(_loc6_ || _loc2_)
                  {
                     §§push([param1]);
                     if(!(_loc7_ && this))
                     {
                        return §§pop();
                     }
                     addr86:
                     _loc2_ = §§pop();
                     for each(_loc3_ in param1)
                     {
                        if(_loc6_)
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
                     §§goto(addr77);
                  }
               }
               else
               {
                  §§push(param1 is Array);
                  if(!(_loc7_ && this))
                  {
                     if(§§pop())
                     {
                        if(_loc6_ || _loc2_)
                        {
                           addr77:
                           return param1;
                        }
                        addr85:
                        §§goto(addr86);
                        §§push([]);
                     }
                     else
                     {
                        addr84:
                        if(param1 is Object)
                        {
                           §§goto(addr85);
                        }
                     }
                  }
                  §§goto(addr84);
               }
               return [];
            }
            §§goto(addr84);
         }
         §§goto(addr85);
      }
      
      public function get lifeTime() : Number
      {
         return this.§5"v§;
      }
      
      public function get minScaleBegin() : Number
      {
         return this.§+"=§;
      }
      
      public function get maxScaleBegin() : Number
      {
         return this.§?"+§;
      }
      
      public function get minScaleEnd() : Number
      {
         return this.§4"M§;
      }
      
      public function get maxScaleEnd() : Number
      {
         return this.§""!§;
      }
      
      public function get minAngle() : Number
      {
         return this.§`"K§;
      }
      
      public function get maxAngle() : Number
      {
         return this.§+Z§;
      }
      
      public function get minAngleVel() : Number
      {
         return this.§7"K§;
      }
      
      public function get maxAngleVel() : Number
      {
         return this.§#!J§;
      }
      
      public function get amount() : Number
      {
         return this.§>2§;
      }
      
      public function get minVel() : Number
      {
         return this.§<#9§;
      }
      
      public function get maxVel() : Number
      {
         return this.§7"y§;
      }
      
      public function get minAngleEmitter() : Number
      {
         return this.§<"%§;
      }
      
      public function get maxAngleEmitter() : Number
      {
         return this.§>"q§;
      }
      
      public function get animation() : String
      {
         return this.§]!`§;
      }
      
      public function get gravityX() : Number
      {
         return this.§6"C§;
      }
      
      public function get gravityY() : Number
      {
         return this.§=!]§;
      }
   }
}
