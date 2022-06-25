package §"!&§
{
   import §,6§.§!o§;
   import §,6§.§4d§;
   import §,6§.§5z§;
   import §9E§.§;!U§;
   import §9E§.DisplayObject;
   import §9E§.DisplayObjectContainer;
   import §9E§.Sprite;
   
   public class §+l§ extends §!!%§
   {
      
      public static const §82§:String = "background";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §82§ = "background";
         }
      }
      
      private var mName:String;
      
      private var §0!T§:String;
      
      private var §;!@§:Number;
      
      private var §3L§:Number;
      
      private var §>!D§:Number;
      
      private var §7!3§:Number;
      
      private var §4t§:Number = 1.0;
      
      private var § l§:Boolean = true;
      
      public function §+l§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_ || param1)
         {
            super(param1,param2);
            while(true)
            {
               this.mName = param3;
               while(_loc8_ || this)
               {
                  this.§3L§ = param6;
                  loop4:
                  for(; !(_loc9_ && this); if(!(_loc8_ || param1))
                  {
                     continue;
                  },addr72:,if(!(_loc9_ && this))
                  {
                     §§goto(addr24);
                  }
                  else
                  {
                     loop2:
                     while(true)
                     {
                        if(_loc8_)
                        {
                           this.§;!@§ = param5;
                           break loop4;
                        }
                        addr134:
                        while(true)
                        {
                           this.§0!T§ = param4;
                           continue loop2;
                        }
                     }
                  })
                  {
                     §§push(!isNaN(param7));
                     loop5:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(§§pop())
                           {
                              if(!_loc9_)
                              {
                                 this.§4t§ = param7;
                              }
                              if(!_loc9_)
                              {
                                 continue loop4;
                              }
                              addr88:
                              while(true)
                              {
                                 §§push(param7 > 0);
                                 if(_loc8_ || this)
                                 {
                                    continue loop5;
                                 }
                              }
                              continue loop5;
                           }
                           addr24:
                           return;
                           addr46:
                        }
                        while(true)
                        {
                           §§pop();
                           §§goto(addr88);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr134);
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §[!D§() : String
      {
         return this.§0!T§;
      }
      
      public function get x() : Number
      {
         return this.§;!@§;
      }
      
      public function get y() : Number
      {
         return this.§3L§;
      }
      
      public function set §6!F§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§ l§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§!o§) : Boolean
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:DisplayObject = null;
         var _loc5_:§5z§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!_loc10_)
         {
            §§push(super.update(param1,param2,param3));
            if(!(_loc10_ && this))
            {
               if(!§§pop())
               {
                  §§goto(addr46);
               }
               §§goto(addr259);
            }
            §§goto(addr260);
         }
         addr46:
         if(!(_loc4_ = §4d§.§,b§(this.§[!D§,param3)))
         {
            if(_loc9_ || param1)
            {
               if(_loc5_ = param3.§`F§(this.§[!D§))
               {
                  (_loc4_ = new §;!U§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  if(_loc9_ || param3)
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
            if(_loc9_ || param3)
            {
               addr102:
               if(_loc6_ = param2.getChildByName(§82§) as Sprite)
               {
                  if(_loc9_)
                  {
                     param2 = _loc6_;
                     addr126:
                     §§push(_loc4_);
                     §§push(_loc4_.x);
                     if(!(_loc10_ && param2))
                     {
                        §§push(§§pop() + this.x);
                     }
                     §§pop().x = §§pop();
                     if(!_loc10_)
                     {
                        addr142:
                        §§push(_loc4_);
                        §§push(_loc4_.y);
                        if(!(_loc10_ && this))
                        {
                           §§push(§§pop() + this.y);
                        }
                        §§pop().y = §§pop();
                        if(_loc9_ || param3)
                        {
                           addr163:
                           _loc4_.name = this.name;
                        }
                        if(_loc7_ = param2.getChildByName(this.name))
                        {
                           if(_loc9_ || this)
                           {
                              (_loc8_ = _loc7_.parent).removeChild(_loc7_,true);
                              if(_loc9_ || param2)
                              {
                                 _loc8_.addChild(_loc4_);
                                 if(_loc9_ || this)
                                 {
                                    addr211:
                                    if(this.name == §82§)
                                    {
                                       if(!(_loc10_ && this))
                                       {
                                          addr232:
                                          if(this.§ l§)
                                          {
                                             if(_loc9_ || this)
                                             {
                                                §§goto(addr242);
                                             }
                                          }
                                          §§goto(addr242);
                                       }
                                       _loc4_.scaleY = this.§4t§;
                                    }
                                    §§goto(addr242);
                                 }
                                 §§goto(addr232);
                              }
                              §§goto(addr242);
                           }
                        }
                        else
                        {
                           param2.addChild(_loc4_);
                        }
                        §§goto(addr211);
                     }
                     §§goto(addr163);
                  }
                  §§goto(addr142);
               }
               §§goto(addr126);
            }
            else
            {
               addr260:
               return true;
               addr259:
            }
         }
         addr242:
         _loc4_.scaleX = this.§4t§;
         if(_loc9_ || this)
         {
         }
         return false;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            this.§>!D§ = param1;
         }
         do
         {
            this.§7!3§ = param2;
         }
         while(!_loc4_);
         
      }
      
      override public function clone() : §!!%§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§+l§ = new §+l§(time,duration,this.mName,this.§0!T§,this.§;!@§,this.§3L§,this.§4t§);
         if(_loc2_ || _loc3_)
         {
            _loc1_.§ l§ = this.§ l§;
         }
         while(true)
         {
            _loc1_.§>!D§ = this.§>!D§;
            while(!(_loc3_ && _loc3_))
            {
               _loc1_.§7!3§ = this.§7!3§;
               if(!(_loc3_ && _loc2_))
               {
                  return _loc1_;
               }
            }
         }
      }
   }
}
