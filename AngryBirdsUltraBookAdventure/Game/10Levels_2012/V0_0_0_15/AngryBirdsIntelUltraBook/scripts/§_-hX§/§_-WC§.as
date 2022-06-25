package §_-hX§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.PixelSnapping;
   import flash.display.Sprite;
   
   public class §_-WC§ extends Sprite
   {
      
      public static var §_-ic§:§_-iS§;
       
      
      private var §_-Dy§:DisplayObjectContainer;
      
      public var §_-wl§:String;
      
      private var §_-tb§:Boolean;
      
      private var §_-3m§:int;
      
      public function §_-WC§(param1:String, param2:String, param3:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            super();
            do
            {
               this.§_-tb§ = param3;
            }
            while(!(_loc5_ || param3));
            
         }
         §§push(param2);
         if(_loc5_ || param1)
         {
            var _loc4_:* = §§pop();
            if(_loc5_ || param2)
            {
               §§push(§_-bT§.NORMAL);
               if(!_loc6_)
               {
                  §§push(_loc4_);
                  if(_loc5_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc6_)
                        {
                           §§push(0);
                           if(_loc6_)
                           {
                           }
                        }
                        else
                        {
                           addr115:
                           §§push(1);
                           if(_loc6_ && param1)
                           {
                           }
                        }
                        §§goto(addr128);
                     }
                     else
                     {
                        addr113:
                        §§push(§_-bT§.§_-N2§);
                        §§push(_loc4_);
                     }
                     §§goto(addr115);
                  }
                  if(§§pop() === §§pop())
                  {
                     §§goto(addr115);
                  }
                  else
                  {
                     §§push(2);
                  }
                  addr128:
                  switch(§§pop())
                  {
                     case 0:
                        this.§_-3m§ = 100;
                        if(_loc5_)
                        {
                           addr164:
                           if(param1.length > 0)
                           {
                              if(!_loc6_)
                              {
                                 addr170:
                                 this.§_-wl§ = param1;
                              }
                           }
                           break;
                           addr36:
                        }
                        do
                        {
                           this.§_-0EN§(param1);
                        }
                        while(!(_loc5_ || param1));
                        
                        addr163:
                        break;
                     case 1:
                        this.§_-3m§ = 50;
                        if(!_loc6_)
                        {
                           §§goto(addr164);
                        }
                        §§goto(addr170);
                     default:
                        this.§_-3m§ = int(param2);
                        if(!(_loc6_ && param1))
                        {
                           if(false)
                           {
                              §§goto(addr36);
                           }
                           §§goto(addr164);
                        }
                        §§goto(addr163);
                  }
                  return;
               }
               §§goto(addr113);
            }
            §§goto(addr115);
         }
         §§goto(addr164);
      }
      
      public function §_-Bk§() : int
      {
         return this.§_-3m§;
      }
      
      private function §_-0EN§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§_-Dy§ == null)
            {
               if(_loc2_ || param1)
               {
                  this.§_-Dy§ = new Sprite();
                  addr86:
               }
               §§goto(addr86);
            }
            while(true)
            {
               if(this.§_-Dy§.numChildren <= 0)
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  if(!_loc3_)
                  {
                     §_-ic§.render(param1,this.§_-L5§,this.§_-Bk§(),this.§_-tb§);
                     break;
                  }
               }
               else
               {
                  this.§_-Dy§.removeChildAt(0);
               }
            }
            return;
         }
         §§goto(addr86);
      }
      
      public function §_-L5§(param1:BitmapData) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Bitmap = new Bitmap(param1,PixelSnapping.ALWAYS,true);
         if(!_loc3_)
         {
            this.§_-Dy§.addChild(_loc2_);
         }
         loop0:
         do
         {
            _loc2_.x = -10;
            while(true)
            {
               _loc2_.y = -10;
               while(_loc4_)
               {
                  addChild(this.§_-Dy§);
                  if(!_loc3_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!_loc4_);
         
      }
   }
}
