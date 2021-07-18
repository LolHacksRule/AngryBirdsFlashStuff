package §2"a§
{
   import §!!U§.§#"t§;
   import §!!U§.DisplayObject;
   import §!!U§.DisplayObjectContainer;
   import §!!U§.Sprite;
   import §7!F§.§7§;
   import §7!F§.§8!W§;
   import §7!F§.§^"U§;
   
   public class §%#`§ extends §,^§
   {
      
      public static const §1R§:String = "background";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §1R§ = "background";
         }
      }
      
      private var mName:String;
      
      private var §-!`§:String;
      
      private var §8!+§:Number;
      
      private var §=!Z§:Number;
      
      private var §6"?§:Number;
      
      private var §[!4§:Number;
      
      private var §-#G§:Number = 1.0;
      
      private var §5#E§:Boolean = true;
      
      public function §%#`§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            super(param1,param2);
            while(true)
            {
               this.mName = param3;
               loop1:
               while(true)
               {
                  this.§-!`§ = param4;
                  while(true)
                  {
                     this.§8!+§ = param5;
                     addr110:
                     addr86:
                     while(true)
                     {
                        this.§=!Z§ = param6;
                     }
                     while(!(_loc8_ && param1))
                     {
                        continue loop1;
                     }
                  }
               }
               if(!(_loc9_ || param2))
               {
                  continue;
               }
               this.§-#G§ = param7;
               §§goto(addr70);
            }
         }
         §§goto(addr105);
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §<"4§() : String
      {
         return this.§-!`§;
      }
      
      public function get x() : Number
      {
         return this.§8!+§;
      }
      
      public function get y() : Number
      {
         return this.§=!Z§;
      }
      
      public function set §?"`§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§5#E§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§7#5§) : Boolean
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:DisplayObject = null;
         var _loc5_:§8!W§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!_loc9_)
         {
            §§push(super.update(param1,param2,param3));
            if(!(_loc9_ && this))
            {
               if(!§§pop())
               {
                  addr47:
                  if(!(_loc4_ = §^"U§.§]!6§(this.§<"4§,param3)))
                  {
                     if(!(_loc9_ && this))
                     {
                        if(_loc5_ = param3.getTexture(this.§<"4§))
                        {
                           (_loc4_ = new §#"t§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                           if(!_loc9_)
                           {
                              _loc4_.pivotY = -_loc5_.pivotY;
                              addr89:
                              if(_loc4_)
                              {
                                 if(!(_loc9_ && this))
                                 {
                                    addr98:
                                    if(_loc6_ = param2.getChildByName(§1R§) as Sprite)
                                    {
                                       if(!_loc9_)
                                       {
                                          param2 = _loc6_;
                                          addr112:
                                          §§push(_loc4_);
                                          §§push(_loc4_.x);
                                          if(_loc10_ || param1)
                                          {
                                             §§push(§§pop() + this.x);
                                          }
                                          §§pop().x = §§pop();
                                          if(!(_loc9_ && this))
                                          {
                                             §§push(_loc4_);
                                             §§push(_loc4_.y);
                                             if(_loc10_ || param3)
                                             {
                                                §§push(§§pop() + this.y);
                                             }
                                             §§pop().y = §§pop();
                                             if(_loc10_)
                                             {
                                                addr159:
                                                _loc4_.name = this.name;
                                             }
                                          }
                                          if(_loc7_ = param2.getChildByName(this.name))
                                          {
                                             if(_loc10_ || param2)
                                             {
                                                (_loc8_ = _loc7_.parent).removeChild(_loc7_,true);
                                                if(!(_loc9_ && param1))
                                                {
                                                   _loc8_.addChild(_loc4_);
                                                   if(_loc10_ || param2)
                                                   {
                                                      addr207:
                                                      if(this.name == §1R§)
                                                      {
                                                         if(_loc10_ || param1)
                                                         {
                                                            addr218:
                                                            if(this.§5#E§)
                                                            {
                                                               if(_loc10_ || param2)
                                                               {
                                                                  addr228:
                                                                  _loc4_.scaleX = this.§-#G§;
                                                                  if(_loc9_ && param1)
                                                                  {
                                                                  }
                                                                  §§goto(addr253);
                                                               }
                                                               _loc4_.scaleY = this.§-#G§;
                                                               §§goto(addr253);
                                                            }
                                                         }
                                                         addr253:
                                                         return false;
                                                      }
                                                      §§goto(addr228);
                                                   }
                                                   §§goto(addr218);
                                                }
                                                §§goto(addr228);
                                             }
                                          }
                                          else
                                          {
                                             param2.addChild(_loc4_);
                                          }
                                          §§goto(addr207);
                                       }
                                       §§goto(addr159);
                                    }
                                    §§goto(addr112);
                                 }
                                 else
                                 {
                                    addr256:
                                    return true;
                                    addr255:
                                 }
                              }
                              §§goto(addr228);
                           }
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr89);
               }
               §§goto(addr255);
            }
            §§goto(addr256);
         }
         §§goto(addr47);
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§6"?§ = param1;
         }
         do
         {
            this.§[!4§ = param2;
         }
         while(!_loc3_);
         
      }
      
      override public function clone() : §,^§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§%#`§ = new §%#`§(time,duration,this.mName,this.§-!`§,this.§8!+§,this.§=!Z§,this.§-#G§);
         if(_loc2_)
         {
            _loc1_.§5#E§ = this.§5#E§;
         }
         do
         {
            _loc1_.§6"?§ = this.§6"?§;
            do
            {
               _loc1_.§[!4§ = this.§[!4§;
            }
            while(!_loc2_);
            
         }
         while(_loc3_ && this);
         
         return _loc1_;
      }
   }
}
