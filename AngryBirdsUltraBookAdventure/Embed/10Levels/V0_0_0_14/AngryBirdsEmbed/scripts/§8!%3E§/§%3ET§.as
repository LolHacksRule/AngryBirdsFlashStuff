package §8!>§
{
   import §'k§.§ >§;
   import §'k§.§2v§;
   import §'k§.§<f§;
   import §9W§.§6!0§;
   import §9W§.DisplayObject;
   import §9W§.DisplayObjectContainer;
   import §9W§.Sprite;
   
   public class §>T§ extends §1^§
   {
      
      public static const §9Y§:String = "background";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §9Y§ = "background";
         }
      }
      
      private var mName:String;
      
      private var §7e§:String;
      
      private var §<!B§:Number;
      
      private var §,k§:Number;
      
      private var § l§:Number;
      
      private var §4N§:Number;
      
      private var §=#§:Number = 1.0;
      
      private var §+Y§:Boolean = true;
      
      public function §>T§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         super(param1,param2);
         this.mName = param3;
         if(_loc8_)
         {
            this.§7e§ = param4;
            this.§<!B§ = param5;
            this.§,k§ = param6;
         }
         §§push(!isNaN(param7));
         if(_loc8_)
         {
            if(§§pop())
            {
               if(!_loc9_)
               {
                  §§pop();
                  if(_loc8_ || param2)
                  {
                     addr75:
                     if(param7 > 0)
                     {
                        if(!(_loc9_ && this))
                        {
                           this.§=#§ = param7;
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr75);
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §1s§() : String
      {
         return this.§7e§;
      }
      
      public function get x() : Number
      {
         return this.§<!B§;
      }
      
      public function get y() : Number
      {
         return this.§,k§;
      }
      
      public function set §9!$§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§+Y§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§ >§) : Boolean
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:DisplayObject = null;
         var _loc5_:§2v§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(_loc9_ || param1)
         {
            §§push(super.update(param1,param2,param3));
            if(!_loc10_)
            {
               if(!§§pop())
               {
                  §§goto(addr46);
               }
               §§goto(addr229);
            }
            §§goto(addr230);
         }
         addr46:
         if(!(_loc4_ = §<f§.§;!2§(this.§1s§,param3)))
         {
            if(!_loc10_)
            {
               if(_loc5_ = param3.§8!<§(this.§1s§))
               {
                  (_loc4_ = new §6!0§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  if(!(_loc10_ && param3))
                  {
                     _loc4_.pivotY = -_loc5_.pivotY;
                  }
               }
               §§goto(addr88);
            }
            §§goto(addr97);
         }
         addr88:
         if(_loc4_)
         {
            if(_loc9_ || this)
            {
               addr97:
               if(_loc6_ = param2.getChildByName(§9Y§) as Sprite)
               {
                  if(!(_loc10_ && this))
                  {
                     param2 = _loc6_;
                     addr126:
                     §§push(_loc4_);
                     §§push(_loc4_.x);
                     if(_loc9_)
                     {
                        §§push(§§pop() + this.x);
                     }
                     §§pop().x = §§pop();
                     if(!_loc10_)
                     {
                        §§push(_loc4_);
                        §§push(_loc4_.y);
                        if(!(_loc10_ && param2))
                        {
                           §§push(§§pop() + this.y);
                        }
                        §§pop().y = §§pop();
                        if(!_loc10_)
                        {
                           addr153:
                           _loc4_.name = this.name;
                        }
                     }
                     if(_loc7_ = param2.getChildByName(this.name))
                     {
                        if(_loc9_)
                        {
                           (_loc8_ = _loc7_.parent).removeChild(_loc7_,true);
                           if(!_loc10_)
                           {
                              _loc8_.addChild(_loc4_);
                              if(!_loc10_)
                              {
                                 addr186:
                                 if(this.name == §9Y§)
                                 {
                                    if(_loc9_ || param2)
                                    {
                                       if(this.§+Y§)
                                       {
                                          if(_loc10_ && param3)
                                          {
                                          }
                                          §§goto(addr227);
                                       }
                                    }
                                 }
                              }
                              _loc4_.scaleX = this.§=#§;
                              if(!_loc9_)
                              {
                              }
                              §§goto(addr227);
                           }
                           _loc4_.scaleY = this.§=#§;
                           §§goto(addr227);
                        }
                     }
                     else
                     {
                        param2.addChild(_loc4_);
                     }
                     §§goto(addr186);
                  }
                  §§goto(addr153);
               }
               §§goto(addr126);
            }
            else
            {
               addr230:
               return true;
               addr229:
            }
         }
         addr227:
         return false;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§ l§ = param1;
            if(_loc4_ || _loc3_)
            {
               this.§4N§ = param2;
            }
         }
      }
      
      override public function clone() : §1^§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§>T§ = new §>T§(time,duration,this.mName,this.§7e§,this.§<!B§,this.§,k§,this.§=#§);
         if(_loc3_ || _loc1_)
         {
            _loc1_.§+Y§ = this.§+Y§;
            if(_loc3_)
            {
               _loc1_.§ l§ = this.§ l§;
               if(_loc2_ && _loc1_)
               {
               }
               §§goto(addr81);
            }
            _loc1_.§4N§ = this.§4N§;
         }
         addr81:
         return _loc1_;
      }
   }
}
