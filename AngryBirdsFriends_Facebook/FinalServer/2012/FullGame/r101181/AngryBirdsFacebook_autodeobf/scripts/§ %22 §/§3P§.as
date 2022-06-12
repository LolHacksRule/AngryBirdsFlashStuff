package § " §
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.PixelSnapping;
   import flash.display.Sprite;
   
   public class §3P§ extends Sprite
   {
      
      public static var §'"=§:§@Y§;
       
      
      protected var §62§:DisplayObjectContainer;
      
      public var §@!0§:String;
      
      protected var §&%§:Boolean;
      
      private var §%" §:int;
      
      public function §3P§(param1:String, param2:String, param3:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param3)
         {
            super();
         }
         do
         {
            this.§&%§ = param3;
         }
         while(_loc6_);
         
         §§push(param2);
         if(_loc5_)
         {
            var _loc4_:* = §§pop();
            if(!_loc6_)
            {
               §§push(§+!p§.NORMAL);
               if(!_loc6_)
               {
                  §§push(_loc4_);
                  if(!_loc6_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc6_)
                        {
                           addr97:
                           §§push(0);
                           if(_loc5_ || param2)
                           {
                           }
                        }
                        else
                        {
                           addr110:
                           §§push(1);
                           if(_loc6_)
                           {
                           }
                        }
                        §§goto(addr118);
                     }
                     else
                     {
                        §§goto(addr109);
                     }
                  }
                  §§goto(addr109);
               }
               addr109:
               if(§+!p§.§'"6§ === _loc4_)
               {
                  §§goto(addr110);
               }
               else
               {
                  §§push(2);
               }
               addr118:
               switch(§§pop())
               {
                  case 0:
                     this.§%" § = 100;
                     if(_loc5_)
                     {
                        addr36:
                     }
                     else
                     {
                        addr137:
                     }
                     addr149:
                     if(param1.length > 0)
                     {
                        if(!(_loc6_ && param2))
                        {
                           this.§@!0§ = param1;
                        }
                        do
                        {
                           this.§[S§(param1);
                        }
                        while(_loc6_);
                        
                        addr148:
                        break;
                     }
                     break;
                  case 1:
                     this.§%" § = 50;
                     if(!(_loc6_ && param1))
                     {
                        §§goto(addr149);
                     }
                     §§goto(addr148);
                  default:
                     this.§%" § = int(param2);
                     if(_loc5_)
                     {
                        if(false)
                        {
                           §§goto(addr36);
                        }
                     }
                     else
                     {
                        §§goto(addr137);
                     }
                     §§goto(addr149);
               }
               return;
            }
            §§goto(addr97);
         }
         §§goto(addr149);
      }
      
      public function §#D§() : int
      {
         return this.§%" §;
      }
      
      private function §[S§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§@!0§ = param1;
         }
         while(this.§62§ == null)
         {
            if(!(_loc3_ && _loc3_))
            {
               this.§62§ = new Sprite();
            }
            if(!(_loc3_ && this))
            {
               break;
            }
         }
         while(true)
         {
            if(this.§62§.numChildren <= 0)
            {
               if(_loc3_)
               {
                  break;
               }
               if(!_loc3_)
               {
                  this.sendAvatarToRenderer();
                  break;
               }
            }
            else
            {
               this.§62§.removeChildAt(0);
            }
         }
      }
      
      protected function sendAvatarToRenderer() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §'"=§.render(this.§@!0§,this.renderAvatar,this.§#D§(),this.§&%§);
         }
      }
      
      public function renderAvatar(param1:BitmapData) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(this.§62§ == null)
            {
               if(!(_loc3_ && param1))
               {
                  this.§62§ = new Sprite();
               }
            }
         }
         while(this.§62§.numChildren > 0)
         {
            this.§62§.removeChildAt(0);
            if(!(_loc4_ || param1))
            {
               break;
            }
         }
         var _loc2_:Bitmap = new Bitmap(param1,PixelSnapping.ALWAYS,true);
         if(!(_loc3_ && _loc3_))
         {
            this.§62§.addChild(_loc2_);
            while(true)
            {
               _loc2_.x = -10;
               loop2:
               while(!_loc3_)
               {
                  while(true)
                  {
                     _loc2_.y = -10;
                     do
                     {
                        addChild(this.§62§);
                     }
                     while(!_loc4_);
                     
                     if(_loc4_)
                     {
                        break;
                     }
                     continue loop2;
                  }
                  return;
               }
            }
         }
         §§goto(addr113);
      }
   }
}
