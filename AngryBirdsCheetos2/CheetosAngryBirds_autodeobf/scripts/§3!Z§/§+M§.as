package §3!Z§
{
   import §9t§.§35§;
   import §9t§.§6!_§;
   import §9t§.§=!>§;
   import §^a§.§6p§;
   import §^a§.DisplayObject;
   import §^a§.DisplayObjectContainer;
   import §^a§.Sprite;
   
   public class §+M§ extends §!'§
   {
      
      public static const §,z§:String = "background";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §,z§ = "background";
         }
      }
      
      private var mName:String;
      
      private var §#W§:String;
      
      private var §7F§:Number;
      
      private var §6_§:Number;
      
      private var §]>§:Number;
      
      private var §7w§:Number;
      
      private var §4!_§:Number = 1.0;
      
      private var §;1§:Boolean = true;
      
      public function §+M§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!(_loc9_ && param2))
         {
            super(param1,param2);
         }
         loop0:
         while(true)
         {
            this.mName = param3;
            loop1:
            while(true)
            {
               this.§#W§ = param4;
               while(true)
               {
                  this.§7F§ = param5;
                  while(true)
                  {
                     this.§6_§ = param6;
                     addr90:
                     while(_loc8_ || param2)
                     {
                        continue loop0;
                     }
                  }
                  addr57:
                  if(!_loc9_)
                  {
                     this.§4!_§ = param7;
                     addr72:
                     if(!_loc8_)
                     {
                        loop7:
                        while(_loc8_)
                        {
                           §§push(param7 > 0);
                           if(!(_loc9_ && param2))
                           {
                              addr39:
                              if(!(_loc8_ || param3))
                              {
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          continue loop7;
                                       }
                                       addr82:
                                    }
                                    §§goto(addr39);
                                 }
                                 addr80:
                              }
                              while(§§pop())
                              {
                                 if(!(_loc9_ && param1))
                                 {
                                    if(_loc8_)
                                    {
                                       §§goto(addr57);
                                    }
                                    else
                                    {
                                       §§goto(addr90);
                                    }
                                 }
                                 §§goto(addr72);
                              }
                              §§goto(addr24);
                           }
                           §§goto(addr82);
                        }
                        continue loop1;
                     }
                  }
                  continue;
                  addr24:
                  return;
               }
            }
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §@!S§() : String
      {
         return this.§#W§;
      }
      
      public function get x() : Number
      {
         return this.§7F§;
      }
      
      public function get y() : Number
      {
         return this.§6_§;
      }
      
      public function set §-+§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§;1§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§=!>§) : Boolean
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:DisplayObject = null;
         var _loc5_:§35§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(_loc9_)
         {
            §§push(super.update(param1,param2,param3));
            if(!_loc10_)
            {
               if(!§§pop())
               {
                  §§goto(addr41);
               }
               §§goto(addr229);
            }
            §§goto(addr230);
         }
         addr41:
         if(!(_loc4_ = §6!_§.§&m§(this.§@!S§,param3)))
         {
            if(_loc9_ || param1)
            {
               if(_loc5_ = param3.§=!+§(this.§@!S§))
               {
                  (_loc4_ = new §6p§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  if(!_loc10_)
                  {
                     _loc4_.pivotY = -_loc5_.pivotY;
                  }
               }
               §§goto(addr83);
            }
            §§goto(addr92);
         }
         addr83:
         if(_loc4_)
         {
            if(!(_loc10_ && param2))
            {
               addr92:
               if(_loc6_ = param2.getChildByName(§,z§) as Sprite)
               {
                  if(_loc9_)
                  {
                     param2 = _loc6_;
                     addr116:
                     §§push(_loc4_);
                     §§push(_loc4_.x);
                     if(!(_loc10_ && this))
                     {
                        §§push(§§pop() + this.x);
                     }
                     §§pop().x = §§pop();
                     if(_loc9_)
                     {
                        §§push(_loc4_);
                        §§push(_loc4_.y);
                        if(_loc9_ || this)
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
                           if(!(_loc10_ && this))
                           {
                              (_loc8_ = _loc7_.parent).removeChild(_loc7_,true);
                              if(!_loc10_)
                              {
                                 _loc8_.addChild(_loc4_);
                                 if(_loc9_)
                                 {
                                    addr191:
                                    if(this.name == §,z§)
                                    {
                                       if(!_loc10_)
                                       {
                                          if(this.§;1§)
                                          {
                                             if(_loc9_)
                                             {
                                                §§goto(addr202);
                                             }
                                          }
                                          §§goto(addr202);
                                       }
                                    }
                                    §§goto(addr202);
                                 }
                                 _loc4_.scaleY = this.§4!_§;
                              }
                              §§goto(addr202);
                           }
                        }
                        else
                        {
                           param2.addChild(_loc4_);
                        }
                        §§goto(addr191);
                     }
                  }
                  §§goto(addr153);
               }
               §§goto(addr116);
            }
            else
            {
               addr230:
               return true;
               addr229:
            }
         }
         addr202:
         _loc4_.scaleX = this.§4!_§;
         if(_loc9_ || param2)
         {
         }
         return false;
      }
      
      public function §?<§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§]>§ = param1;
            do
            {
               this.§7w§ = param2;
            }
            while(_loc3_);
            
         }
      }
      
      override public function clone() : §!'§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§+M§ = new §+M§(time,duration,this.mName,this.§#W§,this.§7F§,this.§6_§,this.§4!_§);
         if(!_loc2_)
         {
            _loc1_.§;1§ = this.§;1§;
            while(true)
            {
               _loc1_.§]>§ = this.§]>§;
               while(_loc3_ || _loc3_)
               {
                  _loc1_.§7w§ = this.§7w§;
                  if(_loc2_)
                  {
                     continue;
                  }
                  return _loc1_;
                  addr58:
               }
            }
         }
         §§goto(addr58);
      }
   }
}
