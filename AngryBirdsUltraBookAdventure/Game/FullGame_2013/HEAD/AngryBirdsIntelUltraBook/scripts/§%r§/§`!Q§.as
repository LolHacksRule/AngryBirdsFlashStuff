package §%r§
{
   import §#!,§.§0!b§;
   import §#!,§.DisplayObject;
   import §#!,§.DisplayObjectContainer;
   import §#!,§.Sprite;
   import §,!7§.§ H§;
   import §,!7§.CompositeSpriteParser;
   import §,!7§.TextureManager;
   
   public class §`!Q§ extends §,!b§
   {
      
      public static const §;#§:String = "background";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §;#§ = "background";
         }
      }
      
      private var mName:String;
      
      private var §&!O§:String;
      
      private var §1X§:Number;
      
      private var §`J§:Number;
      
      private var §,<§:Number;
      
      private var §5,§:Number;
      
      private var §[D§:Number = 1.0;
      
      private var §>![§:Boolean = true;
      
      public function §`!Q§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!(_loc9_ && this))
         {
            super(param1,param2);
            loop0:
            while(true)
            {
               this.mName = param3;
               addr128:
               while(true)
               {
                  this.§&!O§ = param4;
                  continue loop0;
               }
            }
         }
         loop4:
         while(true)
         {
            §§push(!isNaN(param7));
            if(_loc8_ || this)
            {
               §§push(Boolean(§§pop()));
               loop5:
               while(true)
               {
                  §§push(§§pop());
                  if(_loc8_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(!§§pop())
                  {
                     loop6:
                     while(true)
                     {
                        while(§§pop())
                        {
                           if(!_loc9_)
                           {
                              if(!_loc9_)
                              {
                                 this.§[D§ = param7;
                                 addr63:
                                 if(_loc9_)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       §§push(param7 > 0);
                                       if(_loc9_)
                                       {
                                          break;
                                       }
                                       if(!_loc9_)
                                       {
                                          continue loop6;
                                       }
                                       addr88:
                                       while(true)
                                       {
                                          §§pop();
                                          continue loop8;
                                       }
                                    }
                                    continue;
                                 }
                                 if(!_loc8_)
                                 {
                                    continue loop4;
                                 }
                                 if(!_loc9_)
                                 {
                                    break;
                                 }
                                 §§goto(addr128);
                              }
                              break loop5;
                           }
                           §§goto(addr63);
                        }
                        return;
                     }
                     continue;
                     addr44:
                  }
               }
               §§goto(addr109);
            }
            §§goto(addr88);
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §4!_§() : String
      {
         return this.§&!O§;
      }
      
      public function get x() : Number
      {
         return this.§1X§;
      }
      
      public function get y() : Number
      {
         return this.§`J§;
      }
      
      public function set §@!g§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§>![§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:TextureManager) : Boolean
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:DisplayObject = null;
         var _loc5_:§ H§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(_loc10_ || param2)
         {
            §§push(super.update(param1,param2,param3));
            if(!(_loc9_ && param2))
            {
               §§push(!§§pop());
               if(_loc10_)
               {
                  if(§§pop())
                  {
                     addr55:
                     _loc4_ = CompositeSpriteParser.§]P§(this.§4!_§,param3);
                     if(_loc10_)
                     {
                        §§push(!_loc4_);
                        if(!_loc9_)
                        {
                           if(§§pop())
                           {
                              if(_loc10_)
                              {
                                 _loc5_ = param3.§]w§(this.§4!_§);
                                 if(!_loc9_)
                                 {
                                    if(_loc5_)
                                    {
                                    }
                                    addr113:
                                    §§push(Boolean(_loc4_));
                                    if(_loc10_ || param3)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc10_ || param3)
                                          {
                                             _loc6_ = param2.getChildByName(§;#§) as Sprite;
                                             if(_loc10_)
                                             {
                                                if(_loc6_)
                                                {
                                                   if(!(_loc9_ && param2))
                                                   {
                                                      param2 = _loc6_;
                                                      addr164:
                                                      §§push(_loc4_);
                                                      §§push(_loc4_.x);
                                                      if(_loc10_)
                                                      {
                                                         §§push(§§pop() + this.x);
                                                      }
                                                      §§pop().x = §§pop();
                                                      if(!_loc9_)
                                                      {
                                                         addr175:
                                                         §§push(_loc4_);
                                                         §§push(_loc4_.y);
                                                         if(!_loc9_)
                                                         {
                                                            §§push(§§pop() + this.y);
                                                         }
                                                         §§pop().y = §§pop();
                                                         if(_loc9_ && param1)
                                                         {
                                                         }
                                                         addr195:
                                                         _loc7_ = param2.getChildByName(this.name);
                                                         if(!_loc9_)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               if(_loc10_ || param1)
                                                               {
                                                                  _loc8_ = _loc7_.parent;
                                                                  if(!(_loc9_ && this))
                                                                  {
                                                                     _loc8_.removeChild(_loc7_,true);
                                                                     if(_loc10_)
                                                                     {
                                                                        addr231:
                                                                        _loc8_.addChild(_loc4_);
                                                                        if(!_loc9_)
                                                                        {
                                                                           addr252:
                                                                           if(this.name == §;#§)
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 if(this.§>![§)
                                                                                 {
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                    }
                                                                                    addr275:
                                                                                    return false;
                                                                                    addr274:
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr274);
                                                                     }
                                                                     _loc4_.scaleX = this.§[D§;
                                                                     if(_loc10_)
                                                                     {
                                                                        _loc4_.scaleY = this.§[D§;
                                                                     }
                                                                     §§goto(addr274);
                                                                  }
                                                                  §§goto(addr231);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               param2.addChild(_loc4_);
                                                            }
                                                         }
                                                         §§goto(addr252);
                                                      }
                                                      _loc4_.name = this.name;
                                                   }
                                                   §§goto(addr195);
                                                }
                                                §§goto(addr164);
                                             }
                                             §§goto(addr175);
                                          }
                                          else
                                          {
                                             addr277:
                                             return true;
                                             addr276:
                                          }
                                       }
                                       §§goto(addr274);
                                    }
                                    §§goto(addr275);
                                 }
                                 _loc4_ = new §0!b§(_loc5_.texture);
                                 if(!(_loc9_ && this))
                                 {
                                    _loc4_.pivotX = -_loc5_.pivotX;
                                    if(!(_loc9_ && this))
                                    {
                                       _loc4_.pivotY = -_loc5_.pivotY;
                                    }
                                 }
                              }
                              §§goto(addr276);
                           }
                           §§goto(addr113);
                        }
                        §§goto(addr275);
                     }
                  }
                  §§goto(addr276);
               }
            }
            §§goto(addr277);
         }
         §§goto(addr55);
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            this.§,<§ = param1;
         }
         do
         {
            this.§5,§ = param2;
         }
         while(!(_loc3_ || param2));
         
      }
      
      override public function clone() : §,!b§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§`!Q§ = new §`!Q§(time,duration,this.mName,this.§&!O§,this.§1X§,this.§`J§,this.§[D§);
         if(!_loc2_)
         {
            _loc1_.§>![§ = this.§>![§;
            do
            {
               _loc1_.§,<§ = this.§,<§;
               do
               {
                  _loc1_.§5,§ = this.§5,§;
               }
               while(_loc2_);
               
            }
            while(_loc2_ && this);
            
         }
         return _loc1_;
      }
   }
}
