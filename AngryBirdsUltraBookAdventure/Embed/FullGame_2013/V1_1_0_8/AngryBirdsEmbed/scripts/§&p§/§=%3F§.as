package §&p§
{
   import §&o§.§?T§;
   import §&o§.DisplayObject;
   import §&o§.DisplayObjectContainer;
   import §&o§.Sprite;
   import §9K§.§,z§;
   import §9K§.§4!<§;
   import §9K§.§5!H§;
   
   public class §=?§ extends §,K§
   {
      
      public static const §!!-§:String = "background";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §=?§)
         {
            §!!-§ = "background";
         }
      }
      
      private var mName:String;
      
      private var §3-§:String;
      
      private var §-`§:Number;
      
      private var §4J§:Number;
      
      private var §[s§:Number;
      
      private var §8!&§:Number;
      
      private var §3!7§:Number = 1.0;
      
      private var §;!#§:Boolean = true;
      
      public function §=?§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         super(param1,param2);
         if(!_loc9_)
         {
            this.mName = param3;
            if(!_loc9_)
            {
               this.§3-§ = param4;
               addr40:
               this.§-`§ = param5;
               this.§4J§ = param6;
               §§push(!isNaN(param7));
               if(!(_loc9_ && param2))
               {
                  if(§§pop())
                  {
                     if(!_loc9_)
                     {
                        addr71:
                        §§pop();
                        §§push(param7 > 0);
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc8_ || this)
                     {
                        this.§3!7§ = param7;
                     }
                  }
                  return;
               }
            }
            §§goto(addr71);
         }
         §§goto(addr40);
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §>m§() : String
      {
         return this.§3-§;
      }
      
      public function get x() : Number
      {
         return this.§-`§;
      }
      
      public function get y() : Number
      {
         return this.§4J§;
      }
      
      public function set §8o§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§;!#§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§5!H§) : Boolean
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:DisplayObject = null;
         var _loc5_:§,z§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!_loc10_)
         {
            §§push(super.update(param1,param2,param3));
            if(_loc9_)
            {
               if(!§§pop())
               {
                  addr41:
                  if(!(_loc4_ = §4!<§.§6!<§(this.§>m§,param3)))
                  {
                     if(!_loc10_)
                     {
                        if(_loc5_ = param3.§3!'§(this.§>m§))
                        {
                           (_loc4_ = new §?T§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                           if(!(_loc10_ && this))
                           {
                              _loc4_.pivotY = -_loc5_.pivotY;
                           }
                        }
                     }
                     addr250:
                     return true;
                     addr249:
                  }
                  if(_loc4_)
                  {
                     if(!(_loc10_ && param2))
                     {
                        if(_loc6_ = param2.getChildByName(§!!-§) as Sprite)
                        {
                           if(!_loc10_)
                           {
                              param2 = _loc6_;
                              addr106:
                              §§push(_loc4_);
                              §§push(_loc4_.x);
                              if(_loc9_ || this)
                              {
                                 §§push(§§pop() + this.x);
                              }
                              §§pop().x = §§pop();
                              if(_loc9_ || param1)
                              {
                                 §§push(_loc4_);
                                 §§push(_loc4_.y);
                                 if(_loc9_ || param1)
                                 {
                                    §§push(§§pop() + this.y);
                                 }
                                 §§pop().y = §§pop();
                                 if(_loc10_ && param3)
                                 {
                                 }
                                 addr162:
                                 if(_loc7_ = param2.getChildByName(this.name))
                                 {
                                    if(!(_loc10_ && param2))
                                    {
                                       (_loc8_ = _loc7_.parent).removeChild(_loc7_,true);
                                       if(!_loc10_)
                                       {
                                          _loc8_.addChild(_loc4_);
                                          if(_loc9_ || param1)
                                          {
                                             addr201:
                                             if(this.name == §!!-§)
                                             {
                                                if(!(_loc10_ && param2))
                                                {
                                                   addr222:
                                                   if(this.§;!#§)
                                                   {
                                                      if(!(_loc10_ && param1))
                                                      {
                                                         addr232:
                                                         _loc4_.scaleX = this.§3!7§;
                                                         if(_loc9_ || this)
                                                         {
                                                         }
                                                         §§goto(addr247);
                                                      }
                                                      addr247:
                                                      return false;
                                                   }
                                                   §§goto(addr232);
                                                }
                                                _loc4_.scaleY = this.§3!7§;
                                             }
                                             §§goto(addr232);
                                          }
                                       }
                                       §§goto(addr222);
                                    }
                                 }
                                 else
                                 {
                                    param2.addChild(_loc4_);
                                 }
                                 §§goto(addr201);
                              }
                              _loc4_.name = this.name;
                           }
                           §§goto(addr162);
                        }
                        §§goto(addr106);
                     }
                     else
                     {
                        §§goto(addr249);
                     }
                  }
                  §§goto(addr232);
               }
               §§goto(addr249);
            }
            §§goto(addr250);
         }
         §§goto(addr41);
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§[s§ = param1;
            if(!(_loc4_ && param1))
            {
               addr28:
               this.§8!&§ = param2;
            }
            return;
         }
         §§goto(addr28);
      }
      
      override public function clone() : §,K§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§=?§ = new §=?§(time,duration,this.mName,this.§3-§,this.§-`§,this.§4J§,this.§3!7§);
         if(_loc3_)
         {
            _loc1_.§;!#§ = this.§;!#§;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.§[s§ = this.§[s§;
               if(!_loc2_)
               {
                  addr72:
                  _loc1_.§8!&§ = this.§8!&§;
               }
               return _loc1_;
            }
         }
         §§goto(addr72);
      }
   }
}
