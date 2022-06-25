package §9!7§
{
   import §,_§.§4K§;
   import §,_§.DisplayObject;
   import §,_§.DisplayObjectContainer;
   import §,_§.Sprite;
   import §5`§.§%F§;
   import §5`§.§49§;
   import §5`§.§?y§;
   
   public class §9v§ extends §`E§
   {
      
      public static const §6!-§:String = "background";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §6!-§ = "background";
         }
      }
      
      private var mName:String;
      
      private var §^P§:String;
      
      private var §^C§:Number;
      
      private var §0§:Number;
      
      private var §5;§:Number;
      
      private var §>!'§:Number;
      
      private var §+'§:Number = 1.0;
      
      private var §%J§:Boolean = true;
      
      public function §9v§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_ || param2)
         {
            super(param1,param2);
            this.mName = param3;
            this.§^P§ = param4;
            if(_loc8_ || param2)
            {
               this.§^C§ = param5;
            }
            this.§0§ = param6;
            if(_loc8_ || param1)
            {
               §§push(!isNaN(param7));
               if(_loc8_)
               {
                  if(§§pop())
                  {
                     if(_loc8_ || param1)
                     {
                        addr88:
                        §§pop();
                        §§goto(addr102);
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc8_)
                     {
                        §§goto(addr102);
                     }
                  }
                  addr102:
                  if(_loc8_ || param2)
                  {
                     addr96:
                     §§push(param7 > 0);
                  }
                  this.§+'§ = param7;
                  return;
               }
            }
            §§goto(addr88);
         }
         §§goto(addr96);
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §#!§() : String
      {
         return this.§^P§;
      }
      
      public function get x() : Number
      {
         return this.§^C§;
      }
      
      public function get y() : Number
      {
         return this.§0§;
      }
      
      public function set § T§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§%J§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§?y§) : Boolean
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:DisplayObject = null;
         var _loc5_:§%F§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!(_loc10_ && param3))
         {
            §§push(super.update(param1,param2,param3));
            if(_loc9_)
            {
               if(!§§pop())
               {
                  §§goto(addr46);
               }
               §§goto(addr234);
            }
            §§goto(addr235);
         }
         addr46:
         if(!(_loc4_ = §49§.§"4§(this.§#!§,param3)))
         {
            if(_loc9_)
            {
               if(_loc5_ = param3.§9,§(this.§#!§))
               {
                  (_loc4_ = new §4K§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  if(!(_loc10_ && param1))
                  {
                     _loc4_.pivotY = -_loc5_.pivotY;
                  }
               }
            }
            addr235:
            return true;
            addr234:
         }
         if(_loc4_)
         {
            if(_loc9_ || param1)
            {
               if(_loc6_ = param2.getChildByName(§6!-§) as Sprite)
               {
                  if(!_loc10_)
                  {
                     param2 = _loc6_;
                     addr121:
                     §§push(_loc4_);
                     §§push(_loc4_.x);
                     if(!_loc10_)
                     {
                        §§push(§§pop() + this.x);
                     }
                     §§pop().x = §§pop();
                     if(_loc9_)
                     {
                        §§push(_loc4_);
                        §§push(_loc4_.y);
                        if(_loc9_ || this)
                        {
                           §§push(§§pop() + this.y);
                        }
                        §§pop().y = §§pop();
                        if(!(_loc10_ && this))
                        {
                           _loc4_.name = this.name;
                        }
                     }
                  }
                  if(_loc7_ = param2.getChildByName(this.name))
                  {
                     if(_loc9_)
                     {
                        (_loc8_ = _loc7_.parent).removeChild(_loc7_,true);
                        if(!(_loc10_ && param1))
                        {
                           _loc8_.addChild(_loc4_);
                           if(!_loc9_)
                           {
                           }
                        }
                        §§goto(addr232);
                     }
                  }
                  else
                  {
                     param2.addChild(_loc4_);
                  }
                  if(this.name == §6!-§)
                  {
                     if(!(_loc10_ && this))
                     {
                        if(this.§%J§)
                        {
                           if(!_loc10_)
                           {
                              §§goto(addr217);
                           }
                        }
                        addr217:
                        _loc4_.scaleX = this.§+'§;
                        if(_loc10_ && this)
                        {
                        }
                        §§goto(addr232);
                     }
                     _loc4_.scaleY = this.§+'§;
                     §§goto(addr232);
                  }
                  §§goto(addr217);
               }
               §§goto(addr121);
            }
            else
            {
               §§goto(addr234);
            }
         }
         addr232:
         return false;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            this.§5;§ = param1;
            if(_loc3_ || param1)
            {
               addr43:
               this.§>!'§ = param2;
            }
            return;
         }
         §§goto(addr43);
      }
      
      override public function clone() : §`E§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§9v§ = new §9v§(time,duration,this.mName,this.§^P§,this.§^C§,this.§0§,this.§+'§);
         if(_loc2_)
         {
            _loc1_.§%J§ = this.§%J§;
            if(_loc2_ || _loc3_)
            {
               _loc1_.§5;§ = this.§5;§;
               if(_loc2_ || _loc2_)
               {
                  addr76:
                  _loc1_.§>!'§ = this.§>!'§;
               }
               return _loc1_;
            }
         }
         §§goto(addr76);
      }
   }
}
