package §<!0§
{
   import §2`§.§%!!§;
   import §2`§.§5E§;
   import §2`§.§6y§;
   import §3!J§.§4!2§;
   import §3!J§.DisplayObject;
   import §3!J§.DisplayObjectContainer;
   import §3!J§.Sprite;
   
   public class §%C§ extends §=!?§
   {
      
      public static const §<!'§:String = "background";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §%C§)
         {
            §<!'§ = "background";
         }
      }
      
      private var mName:String;
      
      private var §`]§:String;
      
      private var §]!B§:Number;
      
      private var §9=§:Number;
      
      private var §!a§:Number;
      
      private var §2!y§:Number;
      
      private var §6!+§:Number = 1.0;
      
      private var §'!?§:Boolean = true;
      
      public function §%C§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && param1))
         {
            super(param1,param2);
            while(true)
            {
               this.mName = param3;
               while(true)
               {
                  this.§`]§ = param4;
                  loop2:
                  while(true)
                  {
                     this.§]!B§ = param5;
                     addr120:
                     while(true)
                     {
                        this.§9=§ = param6;
                        continue loop2;
                     }
                  }
                  addr58:
                  if(!(_loc9_ || this))
                  {
                     continue;
                  }
                  this.§6!+§ = param7;
                  §§goto(addr78);
               }
               if(!(_loc9_ || this))
               {
                  continue;
               }
               §§push(!isNaN(param7));
               loop5:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc9_)
                        {
                           if(_loc9_ || this)
                           {
                              §§goto(addr58);
                           }
                           else
                           {
                              loop7:
                              while(_loc9_)
                              {
                                 while(true)
                                 {
                                    §§push(param7 > 0);
                                    if(!(_loc8_ && param2))
                                    {
                                       continue loop5;
                                    }
                                    addr93:
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop7;
                                    }
                                 }
                              }
                           }
                           §§goto(addr120);
                        }
                        §§goto(addr78);
                     }
                     §§goto(addr25);
                     addr47:
                  }
                  §§goto(addr93);
               }
            }
         }
         §§goto(addr96);
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §^!x§() : String
      {
         return this.§`]§;
      }
      
      public function get x() : Number
      {
         return this.§]!B§;
      }
      
      public function get y() : Number
      {
         return this.§9=§;
      }
      
      public function set §&!w§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§'!?§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§%!!§) : Boolean
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:DisplayObject = null;
         var _loc5_:§5E§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!(_loc9_ && this))
         {
            §§push(super.update(param1,param2,param3));
            if(_loc10_)
            {
               if(!§§pop())
               {
                  §§goto(addr47);
               }
               §§goto(addr230);
            }
            §§goto(addr231);
         }
         addr47:
         if(!(_loc4_ = §6y§.§=!0§(this.§^!x§,param3)))
         {
            if(!_loc9_)
            {
               if(_loc5_ = param3.§5!X§(this.§^!x§))
               {
                  (_loc4_ = new §4!2§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  if(_loc10_ || param2)
                  {
                     _loc4_.pivotY = -_loc5_.pivotY;
                  }
               }
               §§goto(addr89);
            }
            §§goto(addr93);
         }
         addr89:
         if(_loc4_)
         {
            if(!_loc9_)
            {
               addr93:
               if(_loc6_ = param2.getChildByName(§<!'§) as Sprite)
               {
                  if(!(_loc9_ && param1))
                  {
                     param2 = _loc6_;
                     addr122:
                     §§push(_loc4_);
                     §§push(_loc4_.x);
                     if(_loc10_)
                     {
                        §§push(§§pop() + this.x);
                     }
                     §§pop().x = §§pop();
                     if(_loc10_)
                     {
                        addr133:
                        §§push(_loc4_);
                        §§push(_loc4_.y);
                        if(_loc10_)
                        {
                           §§push(§§pop() + this.y);
                        }
                        §§pop().y = §§pop();
                        if(!(_loc9_ && param2))
                        {
                           addr149:
                           _loc4_.name = this.name;
                        }
                        if(_loc7_ = param2.getChildByName(this.name))
                        {
                           if(_loc10_)
                           {
                              (_loc8_ = _loc7_.parent).removeChild(_loc7_,true);
                              if(_loc10_ || param2)
                              {
                                 _loc8_.addChild(_loc4_);
                                 if(!(_loc9_ && param2))
                                 {
                                    addr192:
                                    if(this.name == §<!'§)
                                    {
                                       if(_loc10_ || param2)
                                       {
                                          addr203:
                                          if(this.§'!?§)
                                          {
                                             if(_loc9_)
                                             {
                                             }
                                             §§goto(addr224);
                                          }
                                       }
                                       §§goto(addr224);
                                    }
                                    _loc4_.scaleX = this.§6!+§;
                                    if(_loc9_)
                                    {
                                    }
                                    §§goto(addr224);
                                 }
                                 §§goto(addr203);
                              }
                              §§goto(addr224);
                           }
                        }
                        else
                        {
                           param2.addChild(_loc4_);
                        }
                        §§goto(addr192);
                     }
                     §§goto(addr149);
                  }
                  §§goto(addr133);
               }
               §§goto(addr122);
            }
            else
            {
               addr231:
               return true;
               addr230:
            }
         }
         addr224:
         _loc4_.scaleY = this.§6!+§;
         return false;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§!a§ = param1;
            do
            {
               this.§2!y§ = param2;
            }
            while(_loc4_ && param2);
            
         }
      }
      
      override public function clone() : §=!?§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§%C§ = new §%C§(time,duration,this.mName,this.§`]§,this.§]!B§,this.§9=§,this.§6!+§);
         if(_loc3_)
         {
            _loc1_.§'!?§ = this.§'!?§;
            while(true)
            {
               _loc1_.§!a§ = this.§!a§;
               while(!_loc2_)
               {
                  _loc1_.§2!y§ = this.§2!y§;
                  if(!(_loc2_ && this))
                  {
                     return _loc1_;
                     addr63:
                  }
               }
            }
         }
         §§goto(addr63);
      }
   }
}
