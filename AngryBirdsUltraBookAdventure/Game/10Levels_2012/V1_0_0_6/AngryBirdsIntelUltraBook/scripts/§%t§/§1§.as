package §%t§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.PixelSnapping;
   import flash.display.Sprite;
   
   public class §1§ extends Sprite
   {
      
      public static var §-X§:§>!N§;
       
      
      private var §&!B§:DisplayObjectContainer;
      
      public var §>o§:String;
      
      private var §]!H§:Boolean;
      
      private var §&Q§:int;
      
      public function §1§(param1:String, param2:String, param3:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            super();
         }
         do
         {
            this.§]!H§ = param3;
         }
         while(!_loc5_);
         
         §§push(param2);
         if(!_loc6_)
         {
            var _loc4_:* = §§pop();
            if(!(_loc6_ && param1))
            {
               §§push(§?!a§.NORMAL);
               if(!(_loc6_ && this))
               {
                  §§push(_loc4_);
                  if(!_loc6_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_ || this)
                        {
                           §§push(0);
                           if(_loc6_ && param2)
                           {
                              addr128:
                           }
                        }
                        else
                        {
                           addr125:
                           §§push(1);
                           if(!_loc6_)
                           {
                              §§goto(addr128);
                           }
                        }
                        §§goto(addr133);
                     }
                     else
                     {
                        addr123:
                        §§push(§?!a§.§+6§);
                        §§push(_loc4_);
                     }
                     §§goto(addr125);
                  }
                  if(§§pop() === §§pop())
                  {
                     §§goto(addr125);
                  }
                  else
                  {
                     §§push(2);
                  }
                  addr133:
                  switch(§§pop())
                  {
                     case 0:
                        this.§&Q§ = 100;
                        if(_loc5_)
                        {
                           addr171:
                           if(param1.length > 0)
                           {
                              while(true)
                              {
                                 this.§>o§ = param1;
                              }
                              addr175:
                           }
                           break;
                           addr36:
                        }
                        while(true)
                        {
                           this.§?!W§(param1);
                           if(!(_loc5_ || param2))
                           {
                              continue;
                           }
                           if(_loc5_)
                           {
                              break;
                           }
                           §§goto(addr175);
                        }
                        addr170:
                        break;
                     case 1:
                        this.§&Q§ = 50;
                        if(_loc6_ && param1)
                        {
                        }
                        §§goto(addr171);
                     default:
                        this.§&Q§ = int(param2);
                        if(_loc5_)
                        {
                           if(false)
                           {
                              §§goto(addr36);
                           }
                           §§goto(addr171);
                        }
                        §§goto(addr170);
                  }
                  return;
               }
               §§goto(addr123);
            }
            §§goto(addr125);
         }
         §§goto(addr171);
      }
      
      public function §<_§() : int
      {
         return this.§&Q§;
      }
      
      private function §?!W§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(this.§&!B§ == null)
            {
               if(_loc3_ || _loc3_)
               {
                  addr88:
                  this.§&!B§ = new Sprite();
               }
            }
            while(true)
            {
               if(this.§&!B§.numChildren <= 0)
               {
                  if(_loc2_)
                  {
                     break;
                  }
                  if(!_loc2_)
                  {
                     §-X§.render(param1,this.§!F§,this.§<_§(),this.§]!H§);
                     break;
                  }
               }
               else
               {
                  this.§&!B§.removeChildAt(0);
               }
            }
            return;
         }
         §§goto(addr88);
      }
      
      public function §!F§(param1:BitmapData) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Bitmap = new Bitmap(param1,PixelSnapping.ALWAYS,true);
         if(_loc4_ || _loc3_)
         {
            this.§&!B§.addChild(_loc2_);
         }
         do
         {
            _loc2_.x = -10;
            do
            {
               _loc2_.y = -10;
               do
               {
                  addChild(this.§&!B§);
               }
               while(!(_loc4_ || param1));
               
            }
            while(_loc3_ && _loc3_);
            
         }
         while(_loc3_ && _loc3_);
         
      }
   }
}
