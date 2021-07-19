package §?_§
{
   import §4&§.§ j§;
   import §4&§.§'!"§;
   import §4&§.§,C§;
   import §7!8§.DisplayObject;
   import §7!8§.DisplayObjectContainer;
   import §7!8§.Sprite;
   import §7!8§.§`y§;
   
   public class §5"!§ extends §3'§
   {
      
      public static const §!#§:String = "background";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §!#§ = "background";
         }
      }
      
      private var mName:String;
      
      private var §6K§:String;
      
      private var §""4§:Number;
      
      private var §%W§:Number;
      
      private var §<!f§:Number;
      
      private var §8>§:Number;
      
      private var §8T§:Number = 1.0;
      
      private var §=w§:Boolean = true;
      
      public function §5"!§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || param1)
         {
            super(param1,param2);
            loop0:
            while(true)
            {
               this.mName = param3;
               loop1:
               while(true)
               {
                  this.§6K§ = param4;
                  while(true)
                  {
                     this.§""4§ = param5;
                     while(!_loc8_)
                     {
                        this.§%W§ = param6;
                        if(_loc9_ || param1)
                        {
                           continue loop0;
                        }
                     }
                     continue loop1;
                     addr51:
                     if(_loc8_ && param2)
                     {
                        continue;
                     }
                     this.§8T§ = param7;
                     addr61:
                     if(!(_loc8_ && param2))
                     {
                        §§goto(addr78);
                     }
                     loop4:
                     while(true)
                     {
                        §§push(!isNaN(param7));
                        if(!(_loc8_ && this))
                        {
                           if(§§pop())
                           {
                              loop7:
                              while(true)
                              {
                                 §§pop();
                                 addr108:
                                 while(true)
                                 {
                                    §§push(param7 > 0);
                                    if(_loc9_ || param2)
                                    {
                                       break;
                                    }
                                    continue loop7;
                                 }
                              }
                              addr107:
                           }
                           for(; §§pop(); §§goto(addr108))
                           {
                              if(!(_loc9_ || param2))
                              {
                                 continue loop4;
                              }
                              if(_loc8_)
                              {
                                 continue;
                              }
                              §§goto(addr51);
                           }
                           addr25:
                           return;
                        }
                        §§goto(addr107);
                     }
                  }
               }
            }
         }
         §§goto(addr113);
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §[e§() : String
      {
         return this.§6K§;
      }
      
      public function get x() : Number
      {
         return this.§""4§;
      }
      
      public function get y() : Number
      {
         return this.§%W§;
      }
      
      public function set §"n§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§=w§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§,C§) : Boolean
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:DisplayObject = null;
         var _loc5_:§'!"§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!_loc10_)
         {
            §§push(super.update(param1,param2,param3));
            if(_loc9_ || param3)
            {
               if(!§§pop())
               {
                  §§goto(addr46);
               }
               §§goto(addr239);
            }
            §§goto(addr240);
         }
         addr46:
         if(!(_loc4_ = § j§.§8!x§(this.§[e§,param3)))
         {
            if(_loc9_ || param3)
            {
               if(_loc5_ = param3.getTexture(this.§[e§))
               {
                  (_loc4_ = new §`y§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  if(!_loc10_)
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
               if(_loc6_ = param2.getChildByName(§!#§) as Sprite)
               {
                  if(_loc9_ || param1)
                  {
                     param2 = _loc6_;
                     addr126:
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
                        if(_loc9_)
                        {
                           §§push(§§pop() + this.y);
                        }
                        §§pop().y = §§pop();
                        if(!(_loc10_ && param1))
                        {
                           addr153:
                           _loc4_.name = this.name;
                        }
                        if(_loc7_ = param2.getChildByName(this.name))
                        {
                           if(_loc9_ || param1)
                           {
                              (_loc8_ = _loc7_.parent).removeChild(_loc7_,true);
                              if(_loc9_ || this)
                              {
                                 _loc8_.addChild(_loc4_);
                                 if(_loc9_)
                                 {
                                    addr196:
                                    if(this.name == §!#§)
                                    {
                                       if(!(_loc10_ && param1))
                                       {
                                          if(this.§=w§)
                                          {
                                             if(!_loc9_)
                                             {
                                             }
                                             §§goto(addr237);
                                          }
                                       }
                                    }
                                 }
                              }
                              _loc4_.scaleX = this.§8T§;
                              if(_loc9_ || param1)
                              {
                                 _loc4_.scaleY = this.§8T§;
                              }
                              §§goto(addr237);
                           }
                        }
                        else
                        {
                           param2.addChild(_loc4_);
                        }
                        §§goto(addr196);
                     }
                  }
                  §§goto(addr153);
               }
               §§goto(addr126);
            }
            else
            {
               addr240:
               return true;
               addr239:
            }
         }
         addr237:
         return false;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§<!f§ = param1;
         }
         do
         {
            this.§8>§ = param2;
         }
         while(!_loc3_);
         
      }
      
      override public function clone() : §3'§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§5"!§ = new §5"!§(time,duration,this.mName,this.§6K§,this.§""4§,this.§%W§,this.§8T§);
         if(_loc3_ || this)
         {
            _loc1_.§=w§ = this.§=w§;
            while(true)
            {
               _loc1_.§<!f§ = this.§<!f§;
               §§goto(addr86);
            }
         }
         addr86:
         while(true)
         {
            _loc1_.§8>§ = this.§8>§;
            if(!_loc2_)
            {
               if(_loc3_ || _loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
         return _loc1_;
      }
   }
}
