package §@!L§
{
   import §7!B§.§-§;
   import §7!B§.DisplayObject;
   import §7!B§.DisplayObjectContainer;
   import §7!B§.Sprite;
   import §^!Y§.§'R§;
   import §^!Y§.§1C§;
   import §^!Y§.§]p§;
   
   public class § M§ extends §9N§
   {
      
      public static const §;!_§:String = "background";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §;!_§ = "background";
         }
      }
      
      private var mName:String;
      
      private var §1!T§:String;
      
      private var §#!u§:Number;
      
      private var §<h§:Number;
      
      private var §2!d§:Number;
      
      private var §@@§:Number;
      
      private var §8n§:Number = 1.0;
      
      private var §@!G§:Boolean = true;
      
      public function § M§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
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
                  this.§1!T§ = param4;
                  while(true)
                  {
                     this.§#!u§ = param5;
                     while(!_loc8_)
                     {
                        this.§<h§ = param6;
                        loop4:
                        while(!(_loc8_ && param1))
                        {
                           if(!_loc9_)
                           {
                              continue loop0;
                           }
                           §§push(!isNaN(param7));
                           if(_loc9_)
                           {
                              if(!§§pop())
                              {
                                 while(§§pop())
                                 {
                                    if(!_loc8_)
                                    {
                                       this.§8n§ = param7;
                                    }
                                    if(_loc9_)
                                    {
                                       addr44:
                                       break;
                                    }
                                    addr65:
                                    while(true)
                                    {
                                       if(_loc9_)
                                       {
                                          continue loop1;
                                       }
                                       continue loop4;
                                       §§goto(addr64);
                                    }
                                    §§push(param7 > 0);
                                    continue loop1;
                                    if(!(_loc8_ && param3))
                                    {
                                       continue;
                                    }
                                    §§goto(addr64);
                                 }
                                 return;
                              }
                              addr64:
                              while(true)
                              {
                                 §§pop();
                              }
                              addr64:
                              §§goto(addr65);
                           }
                           §§goto(addr64);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §5V§() : String
      {
         return this.§1!T§;
      }
      
      public function get x() : Number
      {
         return this.§#!u§;
      }
      
      public function get y() : Number
      {
         return this.§<h§;
      }
      
      public function set §6!R§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§@!G§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§'R§) : Boolean
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:DisplayObject = null;
         var _loc5_:§1C§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!(_loc10_ && this))
         {
            §§push(super.update(param1,param2,param3));
            if(!(_loc10_ && this))
            {
               if(!§§pop())
               {
                  addr51:
                  if(!(_loc4_ = §]p§.§,!$§(this.§5V§,param3)))
                  {
                     if(!_loc10_)
                     {
                        if(_loc5_ = param3.§2+§(this.§5V§))
                        {
                           (_loc4_ = new §-§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                           if(!_loc10_)
                           {
                              _loc4_.pivotY = -_loc5_.pivotY;
                           }
                        }
                     }
                     addr220:
                     return true;
                     addr219:
                  }
                  if(_loc4_)
                  {
                     if(_loc9_ || param3)
                     {
                        if(_loc6_ = param2.getChildByName(§;!_§) as Sprite)
                        {
                           if(_loc9_ || param3)
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
                              if(!_loc10_)
                              {
                                 addr137:
                                 §§push(_loc4_);
                                 §§push(_loc4_.y);
                                 if(!_loc10_)
                                 {
                                    §§push(§§pop() + this.y);
                                 }
                                 §§pop().y = §§pop();
                                 if(_loc9_ || param2)
                                 {
                                    addr153:
                                    _loc4_.name = this.name;
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
                                             addr196:
                                             if(this.name == §;!_§)
                                             {
                                                if(!_loc10_)
                                                {
                                                   addr202:
                                                   if(this.§@!G§)
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         addr207:
                                                         _loc4_.scaleX = this.§8n§;
                                                         if(_loc10_)
                                                         {
                                                         }
                                                         §§goto(addr217);
                                                      }
                                                      _loc4_.scaleY = this.§8n§;
                                                      §§goto(addr217);
                                                   }
                                                }
                                                addr217:
                                                return false;
                                             }
                                          }
                                          §§goto(addr207);
                                       }
                                       §§goto(addr202);
                                    }
                                 }
                                 else
                                 {
                                    param2.addChild(_loc4_);
                                 }
                                 §§goto(addr196);
                              }
                              §§goto(addr153);
                           }
                           §§goto(addr137);
                        }
                        §§goto(addr126);
                     }
                     else
                     {
                        §§goto(addr219);
                     }
                  }
                  §§goto(addr207);
               }
               §§goto(addr219);
            }
            §§goto(addr220);
         }
         §§goto(addr51);
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            this.§2!d§ = param1;
            do
            {
               this.§@@§ = param2;
            }
            while(!_loc4_);
            
         }
      }
      
      override public function clone() : §9N§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§ M§ = new § M§(time,duration,this.mName,this.§1!T§,this.§#!u§,this.§<h§,this.§8n§);
         if(!_loc2_)
         {
            _loc1_.§@!G§ = this.§@!G§;
         }
         do
         {
            _loc1_.§2!d§ = this.§2!d§;
            do
            {
               _loc1_.§@@§ = this.§@@§;
            }
            while(_loc2_);
            
         }
         while(!_loc3_);
         
         return _loc1_;
      }
   }
}
