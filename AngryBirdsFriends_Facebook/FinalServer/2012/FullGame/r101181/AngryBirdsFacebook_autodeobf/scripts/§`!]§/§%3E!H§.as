package §`!]§
{
   import §1!$§.§0!N§;
   import §1!$§.DisplayObject;
   import §1!$§.DisplayObjectContainer;
   import §1!$§.Sprite;
   import §6!D§.§0Y§;
   import §6!D§.§3!K§;
   import §6!D§.§9R§;
   
   public class §>!H§ extends §>!D§
   {
      
      public static const §>J§:String = "background";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §>J§ = "background";
         }
      }
      
      private var mName:String;
      
      private var §5!s§:String;
      
      private var §,!k§:Number;
      
      private var §!Q§:Number;
      
      private var §`w§:Number;
      
      private var §%m§:Number;
      
      private var §,!U§:Number = 1.0;
      
      private var §"!B§:Boolean = true;
      
      public function §>!H§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || param2)
         {
            super(param1,param2);
            while(true)
            {
               this.mName = param3;
               while(!(_loc8_ && param2))
               {
                  this.§!Q§ = param6;
                  loop4:
                  for(; !(_loc8_ && param3); if(!(_loc9_ || param1))
                  {
                     continue;
                  },if(_loc9_)
                  {
                     addr25:
                     return;
                  },§§goto(addr120))
                  {
                     §§push(!isNaN(param7));
                     loop5:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop6:
                           while(true)
                           {
                              §§pop();
                              addr79:
                              addr125:
                              while(!_loc8_)
                              {
                                 §§push(param7 > 0);
                                 if(!_loc9_)
                                 {
                                    continue loop6;
                                 }
                                 if(!_loc9_)
                                 {
                                    continue loop5;
                                 }
                              }
                              while(true)
                              {
                                 this.§5!s§ = param4;
                                 addr120:
                                 while(true)
                                 {
                                    this.§,!k§ = param5;
                                    break loop4;
                                 }
                              }
                           }
                        }
                        while(§§pop())
                        {
                           if(!_loc8_)
                           {
                              this.§,!U§ = param7;
                           }
                           if(!(_loc8_ && param1))
                           {
                              continue loop4;
                           }
                           §§goto(addr79);
                        }
                        §§goto(addr25);
                     }
                  }
               }
            }
         }
         §§goto(addr125);
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §&z§() : String
      {
         return this.§5!s§;
      }
      
      public function get x() : Number
      {
         return this.§,!k§;
      }
      
      public function get y() : Number
      {
         return this.§!Q§;
      }
      
      public function set §9!M§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§"!B§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§0Y§) : Boolean
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:DisplayObject = null;
         var _loc5_:§3!K§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!(_loc10_ && param1))
         {
            §§push(super.update(param1,param2,param3));
            if(!_loc10_)
            {
               if(!§§pop())
               {
                  §§goto(addr46);
               }
               §§goto(addr249);
            }
            §§goto(addr250);
         }
         addr46:
         if(!(_loc4_ = §9R§.§ C§(this.§&z§,param3)))
         {
            if(_loc9_ || param2)
            {
               if(_loc5_ = param3.§>s§(this.§&z§))
               {
                  (_loc4_ = new §0!N§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  if(_loc9_)
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
            if(_loc9_ || param2)
            {
               addr97:
               if(_loc6_ = param2.getChildByName(§>J§) as Sprite)
               {
                  if(_loc9_ || param2)
                  {
                     param2 = _loc6_;
                     addr126:
                     §§push(_loc4_);
                     §§push(_loc4_.x);
                     if(_loc9_ || param1)
                     {
                        §§push(§§pop() + this.x);
                     }
                     §§pop().x = §§pop();
                     if(_loc9_)
                     {
                        §§push(_loc4_);
                        §§push(_loc4_.y);
                        if(!(_loc10_ && param3))
                        {
                           §§push(§§pop() + this.y);
                        }
                        §§pop().y = §§pop();
                        if(_loc9_)
                        {
                           addr158:
                           _loc4_.name = this.name;
                        }
                     }
                     if(_loc7_ = param2.getChildByName(this.name))
                     {
                        if(_loc9_ || param3)
                        {
                           (_loc8_ = _loc7_.parent).removeChild(_loc7_,true);
                           if(!_loc10_)
                           {
                              _loc8_.addChild(_loc4_);
                              if(_loc10_ && param2)
                              {
                              }
                              §§goto(addr247);
                           }
                        }
                     }
                     else
                     {
                        param2.addChild(_loc4_);
                     }
                     if(this.name == §>J§)
                     {
                        if(!(_loc10_ && param3))
                        {
                           if(this.§"!B§)
                           {
                              if(_loc9_ || this)
                              {
                                 §§goto(addr232);
                              }
                           }
                           addr232:
                           _loc4_.scaleX = this.§,!U§;
                           if(_loc10_ && this)
                           {
                           }
                           §§goto(addr247);
                        }
                        _loc4_.scaleY = this.§,!U§;
                        §§goto(addr247);
                     }
                     §§goto(addr232);
                  }
                  §§goto(addr158);
               }
               §§goto(addr126);
            }
            else
            {
               addr250:
               return true;
               addr249:
            }
         }
         addr247:
         return false;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§`w§ = param1;
         }
         do
         {
            this.§%m§ = param2;
         }
         while(_loc4_);
         
      }
      
      override public function clone() : §>!D§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§>!H§ = new §>!H§(time,duration,this.mName,this.§5!s§,this.§,!k§,this.§!Q§,this.§,!U§);
         if(!_loc2_)
         {
            _loc1_.§"!B§ = this.§"!B§;
         }
         while(true)
         {
            _loc1_.§`w§ = this.§`w§;
            while(_loc3_)
            {
               _loc1_.§%m§ = this.§%m§;
               if(_loc3_ || _loc1_)
               {
                  return _loc1_;
               }
            }
         }
      }
   }
}
