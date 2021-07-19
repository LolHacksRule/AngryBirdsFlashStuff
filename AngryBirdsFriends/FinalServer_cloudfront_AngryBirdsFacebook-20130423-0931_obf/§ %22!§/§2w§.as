package § "!§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.PixelSnapping;
   import flash.display.Sprite;
   
   public class §2w§ extends Sprite
   {
      
      public static var §6!w§:§04§;
       
      
      protected var §9"W§:DisplayObjectContainer;
      
      public var §+!Q§:String;
      
      protected var §=U§:Boolean;
      
      private var §'""§:int;
      
      public function §2w§(param1:String, param2:String, param3:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super();
         }
         do
         {
            this.§=U§ = param3;
         }
         while(!(_loc6_ || param3));
         
         §§push(param2);
         if(_loc6_)
         {
            var _loc4_:* = §§pop();
            if(!_loc5_)
            {
               §§push(§!"O§.NORMAL);
               if(_loc6_)
               {
                  §§push(_loc4_);
                  if(!(_loc5_ && param1))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc6_)
                        {
                           addr103:
                           §§push(0);
                           if(_loc5_)
                           {
                           }
                        }
                        else
                        {
                           addr111:
                           §§push(1);
                           if(_loc6_ || param3)
                           {
                           }
                        }
                        addr124:
                        switch(§§pop())
                        {
                           case 0:
                              this.§'""§ = 100;
                              if(!_loc5_)
                              {
                                 addr37:
                              }
                              §§goto(addr160);
                           case 1:
                              this.§'""§ = 50;
                              if(_loc6_)
                              {
                                 §§goto(addr160);
                              }
                              break;
                           default:
                              this.§'""§ = int(param2);
                              if(_loc6_ || param1)
                              {
                                 if(false)
                                 {
                                    §§goto(addr37);
                                 }
                                 §§goto(addr160);
                              }
                              addr160:
                              §§goto(addr161);
                        }
                        continue loop1;
                     }
                     addr110:
                     if(§!"O§.§'"O§ === _loc4_)
                     {
                        §§goto(addr111);
                     }
                     else
                     {
                        §§push(2);
                     }
                     §§goto(addr124);
                     §§goto(addr111);
                  }
               }
               §§goto(addr110);
            }
            §§goto(addr103);
         }
         addr161:
         if(param1.length > 0)
         {
            if(!_loc5_)
            {
               this.§+!Q§ = param1;
               break loop2;
            }
            break loop2;
         }
      }
      
      public function § ^§() : int
      {
         return this.§'""§;
      }
      
      private function §7,§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§+!Q§ = param1;
         }
         while(this.§9"W§ == null)
         {
            if(_loc2_ || _loc2_)
            {
               this.§9"W§ = new Sprite();
            }
            if(!_loc3_)
            {
               break;
            }
         }
         while(true)
         {
            if(this.§9"W§.numChildren <= 0)
            {
               if(_loc2_ || _loc2_)
               {
                  this.sendAvatarToRenderer();
               }
               if(!(_loc3_ && _loc3_))
               {
                  break;
               }
            }
            else
            {
               this.§9"W§.removeChildAt(0);
            }
         }
      }
      
      protected function sendAvatarToRenderer() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §6!w§.render(this.§+!Q§,this.renderAvatar,this.§ ^§(),this.§=U§);
         }
      }
      
      public function renderAvatar(param1:BitmapData) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            if(this.§9"W§ == null)
            {
               if(!_loc4_)
               {
                  this.§9"W§ = new Sprite();
               }
            }
         }
         while(this.§9"W§.numChildren > 0)
         {
            this.§9"W§.removeChildAt(0);
            if(!_loc3_)
            {
               break;
            }
         }
         var _loc2_:Bitmap = new Bitmap(param1,PixelSnapping.ALWAYS,true);
         if(_loc3_ || _loc2_)
         {
            this.§9"W§.addChild(_loc2_);
            while(true)
            {
               _loc2_.x = -10;
               while(_loc3_ || param1)
               {
                  _loc2_.y = -10;
                  while(!(_loc4_ && _loc2_))
                  {
                     addChild(this.§9"W§);
                     if(_loc4_ && _loc2_)
                     {
                        continue;
                     }
                     return;
                     addr98:
                  }
               }
            }
         }
         §§goto(addr98);
      }
   }
}
