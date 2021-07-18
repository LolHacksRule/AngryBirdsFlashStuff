package §9!$§
{
   import §-!`§.§7!J§;
   import §-!`§.DisplayObject;
   import §-!`§.DisplayObjectContainer;
   import §-!`§.Sprite;
   import §=U§.§3p§;
   import §=U§.§<6§;
   import §=U§.§>?§;
   
   public class §!!N§ extends §&!W§
   {
      
      public static const §!6§:String = "background";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §!!N§))
         {
            §!6§ = "background";
         }
      }
      
      private var mName:String;
      
      private var §'!E§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §4!L§:Number;
      
      private var §"!C§:Number;
      
      private var §1>§:Number = 1.0;
      
      private var §;!O§:Boolean = true;
      
      public function §!!N§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         super(param1,param2);
         if(_loc9_)
         {
            this.mName = param3;
            this.§'!E§ = param4;
            if(!(_loc8_ && param3))
            {
               this.mX = param5;
               if(!_loc8_)
               {
                  this.mY = param6;
               }
               §§push(!isNaN(param7));
               if(_loc9_ || param1)
               {
                  if(§§pop())
                  {
                     if(!(_loc8_ && this))
                     {
                        addr84:
                        §§pop();
                        §§push(param7 > 0);
                     }
                  }
                  if(§§pop())
                  {
                     addr89:
                     this.§1>§ = param7;
                  }
                  return;
               }
               §§goto(addr84);
            }
         }
         §§goto(addr89);
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §%!?§() : String
      {
         return this.§'!E§;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function set §#@§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§;!O§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§3p§) : Boolean
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:DisplayObject = null;
         var _loc5_:§>?§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!(_loc10_ && param3))
         {
            §§push(super.update(param1,param2,param3));
            if(!(_loc10_ && param3))
            {
               if(!§§pop())
               {
                  §§goto(addr51);
               }
               §§goto(addr244);
            }
            §§goto(addr245);
         }
         addr51:
         if(!(_loc4_ = §<6§.§&2§(this.§%!?§,param3)))
         {
            if(_loc9_ || param3)
            {
               if(_loc5_ = param3.§8!@§(this.§%!?§))
               {
                  (_loc4_ = new §7!J§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  if(!_loc10_)
                  {
                     _loc4_.pivotY = -_loc5_.pivotY;
                  }
               }
               §§goto(addr93);
            }
            §§goto(addr102);
         }
         addr93:
         if(_loc4_)
         {
            if(!(_loc10_ && param2))
            {
               addr102:
               if(_loc6_ = param2.getChildByName(§!6§) as Sprite)
               {
                  if(!(_loc10_ && param1))
                  {
                     param2 = _loc6_;
                     addr131:
                     §§push(_loc4_);
                     §§push(_loc4_.x);
                     if(_loc9_ || this)
                     {
                        §§push(§§pop() + this.x);
                     }
                     §§pop().x = §§pop();
                     if(!_loc10_)
                     {
                        addr147:
                        §§push(_loc4_);
                        §§push(_loc4_.y);
                        if(_loc9_)
                        {
                           §§push(§§pop() + this.y);
                        }
                        §§pop().y = §§pop();
                        if(_loc9_ || this)
                        {
                           addr163:
                           _loc4_.name = this.name;
                        }
                        if(_loc7_ = param2.getChildByName(this.name))
                        {
                           if(_loc9_ || param3)
                           {
                              (_loc8_ = _loc7_.parent).removeChild(_loc7_,true);
                              if(_loc9_)
                              {
                                 _loc8_.addChild(_loc4_);
                                 if(!(_loc10_ && param1))
                                 {
                                    addr216:
                                    if(this.name == §!6§)
                                    {
                                       if(_loc9_)
                                       {
                                          if(this.§;!O§)
                                          {
                                             if(!_loc9_)
                                             {
                                             }
                                             §§goto(addr242);
                                          }
                                       }
                                    }
                                    _loc4_.scaleX = this.§1>§;
                                    if(_loc10_ && param2)
                                    {
                                    }
                                    §§goto(addr242);
                                 }
                              }
                              _loc4_.scaleY = this.§1>§;
                              §§goto(addr242);
                           }
                        }
                        else
                        {
                           param2.addChild(_loc4_);
                        }
                        §§goto(addr216);
                     }
                     §§goto(addr163);
                  }
                  §§goto(addr147);
               }
               §§goto(addr131);
            }
            else
            {
               addr245:
               return true;
               addr244:
            }
         }
         addr242:
         return false;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§4!L§ = param1;
            if(!(_loc4_ && this))
            {
               this.§"!C§ = param2;
            }
         }
      }
      
      override public function clone() : §&!W§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§!!N§ = new §!!N§(time,duration,this.mName,this.§'!E§,this.mX,this.mY,this.§1>§);
         if(_loc2_)
         {
            _loc1_.§;!O§ = this.§;!O§;
            if(!_loc3_)
            {
               addr60:
               _loc1_.§4!L§ = this.§4!L§;
               if(_loc2_ || _loc1_)
               {
                  _loc1_.§"!C§ = this.§"!C§;
               }
            }
            return _loc1_;
         }
         §§goto(addr60);
      }
   }
}
