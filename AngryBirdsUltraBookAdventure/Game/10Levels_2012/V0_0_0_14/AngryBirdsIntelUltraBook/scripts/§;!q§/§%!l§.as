package §;!q§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.PixelSnapping;
   import flash.display.Sprite;
   
   public class §%!l§ extends Sprite
   {
      
      public static var §9!o§:§^!#§;
       
      
      private var §+!5§:DisplayObjectContainer;
      
      public var §7!-§:String;
      
      private var §-!@§:Boolean;
      
      private var §4>§:int;
      
      public function §%!l§(param1:String, param2:String, param3:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
         {
            super();
            do
            {
               this.§-!@§ = param3;
            }
            while(!_loc6_);
            
         }
         §§push(param2);
         if(!_loc5_)
         {
            var _loc4_:* = §§pop();
            if(!_loc5_)
            {
               §§push(§%t§.NORMAL);
               if(!_loc5_)
               {
                  §§push(_loc4_);
                  if(!(_loc5_ && this))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc6_)
                        {
                           §§push(0);
                           if(_loc6_ || param3)
                           {
                           }
                        }
                        else
                        {
                           addr116:
                           §§push(1);
                           if(_loc5_ && param2)
                           {
                           }
                        }
                        §§goto(addr139);
                     }
                     else
                     {
                        addr114:
                        §§push(§%t§.§@!#§);
                        §§push(_loc4_);
                     }
                     §§goto(addr116);
                  }
                  if(§§pop() === §§pop())
                  {
                     §§goto(addr116);
                  }
                  else
                  {
                     §§push(2);
                  }
                  addr139:
                  switch(§§pop())
                  {
                     case 0:
                        this.§4>§ = 100;
                        if(_loc6_ || this)
                        {
                           addr37:
                           break;
                        }
                        addr143:
                        break;
                     case 1:
                        this.§4>§ = 50;
                        if(!_loc5_)
                        {
                           break;
                        }
                        §§goto(addr143);
                        break;
                     default:
                        this.§4>§ = int(param2);
                        if(_loc6_)
                        {
                           if(true)
                           {
                              break;
                           }
                           §§goto(addr37);
                        }
                        else
                        {
                           §§goto(addr143);
                        }
                  }
                  §§goto(addr163);
               }
               §§goto(addr114);
            }
            §§goto(addr116);
         }
         addr163:
         if(param1.length > 0)
         {
            do
            {
               this.§7!-§ = param1;
               do
               {
                  this.§<!1§(param1);
               }
               while(!_loc6_);
               
            }
            while(!(_loc6_ || this));
            
         }
      }
      
      public function §null §() : int
      {
         return this.§4>§;
      }
      
      private function §<!1§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(this.§+!5§ == null)
            {
               if(_loc2_)
               {
                  this.§+!5§ = new Sprite();
                  addr96:
               }
               §§goto(addr96);
            }
            while(true)
            {
               if(this.§+!5§.numChildren <= 0)
               {
                  if(_loc3_ && _loc2_)
                  {
                     break;
                  }
                  if(!(_loc3_ && _loc3_))
                  {
                     §9!o§.render(param1,this.§+!9§,this.§null §(),this.§-!@§);
                     break;
                  }
               }
               else
               {
                  this.§+!5§.removeChildAt(0);
               }
            }
            return;
         }
         §§goto(addr96);
      }
      
      public function §+!9§(param1:BitmapData) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Bitmap = new Bitmap(param1,PixelSnapping.ALWAYS,true);
         if(!(_loc4_ && this))
         {
            this.§+!5§.addChild(_loc2_);
            loop0:
            do
            {
               _loc2_.x = -10;
               while(true)
               {
                  _loc2_.y = -10;
                  while(!(_loc4_ && _loc2_))
                  {
                     addChild(this.§+!5§);
                     if(!_loc4_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(_loc4_);
            
         }
      }
   }
}
