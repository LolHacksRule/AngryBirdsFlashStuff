package §^`§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.PixelSnapping;
   import flash.display.Sprite;
   
   public class §>!N§ extends Sprite
   {
      
      public static var §!!e§:§;!D§;
       
      
      private var § !N§:DisplayObjectContainer;
      
      public var §9!l§:String;
      
      private var §8u§:Boolean;
      
      private var §#!@§:int;
      
      public function §>!N§(param1:String, param2:String, param3:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            super();
            do
            {
               this.§8u§ = param3;
            }
            while(!(_loc5_ || param3));
            
         }
         §§push(param2);
         if(_loc5_ || this)
         {
            var _loc4_:* = §§pop();
            if(_loc5_ || param3)
            {
               §§push(§14§.NORMAL);
               if(!(_loc6_ && param3))
               {
                  §§push(_loc4_);
                  if(!_loc6_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_)
                        {
                           addr112:
                           §§push(0);
                           if(!_loc5_)
                           {
                           }
                        }
                        else
                        {
                           addr120:
                           §§push(1);
                           if(!_loc5_)
                           {
                           }
                        }
                        §§goto(addr138);
                     }
                     else
                     {
                        §§goto(addr119);
                     }
                  }
                  §§goto(addr119);
               }
               addr119:
               if(§14§.§93§ === _loc4_)
               {
                  §§goto(addr120);
               }
               else
               {
                  §§push(2);
               }
               addr138:
               switch(§§pop())
               {
                  case 0:
                     this.§#!@§ = 100;
                     addr159:
                     if(param1.length > 0)
                     {
                        if(_loc5_)
                        {
                           this.§9!l§ = param1;
                        }
                        do
                        {
                           this.§`y§(param1);
                        }
                        while(_loc6_);
                        
                        addr158:
                        break;
                     }
                     break;
                     addr53:
                     addr36:
                  case 1:
                     this.§#!@§ = 50;
                     if(!_loc6_)
                     {
                        if(!_loc5_)
                        {
                           §§goto(addr53);
                        }
                     }
                     §§goto(addr159);
                  default:
                     this.§#!@§ = int(param2);
                     if(!_loc6_)
                     {
                        if(false)
                        {
                           §§goto(addr36);
                        }
                        §§goto(addr159);
                     }
                     §§goto(addr158);
               }
               return;
            }
            §§goto(addr112);
         }
         §§goto(addr159);
      }
      
      public function §1!I§() : int
      {
         return this.§#!@§;
      }
      
      private function §`y§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§ !N§ == null)
            {
               if(!(_loc2_ && param1))
               {
                  this.§ !N§ = new Sprite();
                  addr87:
               }
               §§goto(addr87);
            }
            while(true)
            {
               if(this.§ !N§.numChildren <= 0)
               {
                  if(_loc2_)
                  {
                     break;
                  }
                  if(_loc3_)
                  {
                     §!!e§.render(param1,this.§>!t§,this.§1!I§(),this.§8u§);
                     break;
                  }
               }
               else
               {
                  this.§ !N§.removeChildAt(0);
               }
            }
            return;
         }
         §§goto(addr87);
      }
      
      public function §>!t§(param1:BitmapData) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Bitmap = new Bitmap(param1,PixelSnapping.ALWAYS,true);
         if(_loc4_ || param1)
         {
            this.§ !N§.addChild(_loc2_);
            do
            {
               _loc2_.x = -10;
               do
               {
                  _loc2_.y = -10;
                  do
                  {
                     addChild(this.§ !N§);
                  }
                  while(_loc3_ && _loc2_);
                  
               }
               while(_loc3_);
               
            }
            while(_loc3_ && _loc3_);
            
         }
      }
   }
}
