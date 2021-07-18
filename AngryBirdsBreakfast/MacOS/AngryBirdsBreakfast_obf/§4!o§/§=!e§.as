package §4!o§
{
   import § ! §.§+D§;
   import § ! §.§5!x§;
   import § ! §.§8-§;
   import §6![§.§1!J§;
   import §6![§.DisplayObject;
   import §6![§.DisplayObjectContainer;
   import §6![§.Sprite;
   
   public class §=!e§ extends §0!c§
   {
      
      public static const §`]§:String = "background";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §`]§ = "background";
         }
      }
      
      private var mName:String;
      
      private var §1!m§:String;
      
      private var §%!3§:Number;
      
      private var §?!e§:Number;
      
      private var §<`§:Number;
      
      private var §#!A§:Number;
      
      private var §0q§:Number = 1.0;
      
      private var §`b§:Boolean = true;
      
      public function §=!e§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            super(param1,param2);
            loop0:
            while(true)
            {
               this.mName = param3;
               loop1:
               while(true)
               {
                  this.§1!m§ = param4;
                  while(true)
                  {
                     this.§%!3§ = param5;
                     loop3:
                     while(!(_loc8_ && param3))
                     {
                        this.§?!e§ = param6;
                        loop4:
                        for(; !_loc8_; if(!(_loc9_ || param3))
                        {
                           continue;
                        },§§goto(addr20))
                        {
                           if(!_loc9_)
                           {
                              continue loop0;
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
                                       if(_loc9_)
                                       {
                                          if(!(_loc9_ || this))
                                          {
                                             continue loop3;
                                          }
                                          this.§0q§ = param7;
                                          §§goto(addr68);
                                          continue loop3;
                                       }
                                       addr84:
                                       while(true)
                                       {
                                          §§push(param7 > 0);
                                          if(_loc9_ || this)
                                          {
                                             continue loop5;
                                          }
                                       }
                                       continue loop5;
                                    }
                                    continue loop4;
                                 }
                                 addr20:
                                 return;
                                 addr42:
                              }
                              while(true)
                              {
                                 §§pop();
                                 §§goto(addr84);
                              }
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §7!q§() : String
      {
         return this.§1!m§;
      }
      
      public function get x() : Number
      {
         return this.§%!3§;
      }
      
      public function get y() : Number
      {
         return this.§?!e§;
      }
      
      public function set §2z§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§`b§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§5!x§) : Boolean
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:DisplayObject = null;
         var _loc5_:§8-§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(_loc10_ || this)
         {
            §§push(super.update(param1,param2,param3));
            if(!_loc9_)
            {
               if(!§§pop())
               {
                  §§goto(addr47);
               }
               §§goto(addr235);
            }
            §§goto(addr236);
         }
         addr47:
         if(!(_loc4_ = §+D§.§<p§(this.§7!q§,param3)))
         {
            if(!_loc9_)
            {
               if(_loc5_ = param3.§`I§(this.§7!q§))
               {
                  (_loc4_ = new §1!J§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  if(!(_loc9_ && param3))
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
               if(_loc6_ = param2.getChildByName(§`]§) as Sprite)
               {
                  if(!(_loc9_ && this))
                  {
                     param2 = _loc6_;
                     addr122:
                     §§push(_loc4_);
                     §§push(_loc4_.x);
                     if(!(_loc9_ && param3))
                     {
                        §§push(§§pop() + this.x);
                     }
                     §§pop().x = §§pop();
                     if(_loc10_ || param1)
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
                        if(_loc7_ = param2.getChildByName(this.name))
                        {
                           if(_loc10_)
                           {
                              (_loc8_ = _loc7_.parent).removeChild(_loc7_,true);
                              if(_loc10_)
                              {
                                 _loc8_.addChild(_loc4_);
                                 if(_loc10_ || param3)
                                 {
                                    addr197:
                                    if(this.name == §`]§)
                                    {
                                       if(!(_loc9_ && param2))
                                       {
                                          if(this.§`b§)
                                          {
                                             if(_loc9_)
                                             {
                                             }
                                             §§goto(addr233);
                                          }
                                       }
                                    }
                                 }
                              }
                              _loc4_.scaleX = this.§0q§;
                              if(_loc10_)
                              {
                                 _loc4_.scaleY = this.§0q§;
                              }
                              §§goto(addr233);
                           }
                        }
                        else
                        {
                           param2.addChild(_loc4_);
                        }
                        §§goto(addr197);
                     }
                  }
                  §§goto(addr159);
               }
               §§goto(addr122);
            }
            else
            {
               addr236:
               return true;
               addr235:
            }
         }
         addr233:
         return false;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§<`§ = param1;
         }
         do
         {
            this.§#!A§ = param2;
         }
         while(!_loc4_);
         
      }
      
      override public function clone() : §0!c§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§=!e§ = new §=!e§(time,duration,this.mName,this.§1!m§,this.§%!3§,this.§?!e§,this.§0q§);
         if(_loc2_ || _loc2_)
         {
            _loc1_.§`b§ = this.§`b§;
            while(true)
            {
               _loc1_.§<`§ = this.§<`§;
               §§goto(addr85);
            }
         }
         addr85:
         while(true)
         {
            _loc1_.§#!A§ = this.§#!A§;
            if(!(_loc3_ && _loc1_))
            {
               if(_loc2_)
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
