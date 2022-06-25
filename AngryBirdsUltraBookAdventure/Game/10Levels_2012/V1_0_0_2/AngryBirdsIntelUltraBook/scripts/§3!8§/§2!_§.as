package §3!8§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.PixelSnapping;
   import flash.display.Sprite;
   
   public class §2!_§ extends Sprite
   {
      
      public static var §9^§:§#!B§;
       
      
      private var §@!o§:DisplayObjectContainer;
      
      public var §-!Z§:String;
      
      private var §8!o§:Boolean;
      
      private var §2!I§:int;
      
      public function §2!_§(param1:String, param2:String, param3:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super();
         }
         do
         {
            this.§8!o§ = param3;
         }
         while(!_loc5_);
         
         §§push(param2);
         if(!_loc6_)
         {
            var _loc4_:* = §§pop();
            if(!(_loc6_ && param1))
            {
               §§push(§%!5§.NORMAL);
               if(_loc5_ || param2)
               {
                  §§push(_loc4_);
                  if(!_loc6_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc6_ && this))
                        {
                           §§push(0);
                           if(!(_loc5_ || this))
                           {
                              addr128:
                           }
                        }
                        else
                        {
                           addr120:
                           §§push(1);
                           if(_loc5_ || param1)
                           {
                              §§goto(addr128);
                           }
                        }
                        §§goto(addr133);
                     }
                     else
                     {
                        addr118:
                        §§push(§%!5§.§+a§);
                        §§push(_loc4_);
                     }
                     §§goto(addr120);
                  }
                  if(§§pop() === §§pop())
                  {
                     §§goto(addr120);
                  }
                  else
                  {
                     §§push(2);
                  }
                  addr133:
                  switch(§§pop())
                  {
                     case 0:
                        this.§2!I§ = 100;
                        addr164:
                        if(param1.length > 0)
                        {
                           if(!(_loc6_ && param1))
                           {
                              this.§-!Z§ = param1;
                           }
                           do
                           {
                              this.§%M§(param1);
                           }
                           while(_loc6_ && param3);
                           
                           addr178:
                           break;
                           addr178:
                        }
                        break;
                        addr53:
                        addr31:
                     case 1:
                        this.§2!I§ = 50;
                        if(!(_loc6_ && param2))
                        {
                           if(!_loc5_)
                           {
                              §§goto(addr53);
                           }
                           §§goto(addr164);
                        }
                        §§goto(addr178);
                     default:
                        this.§2!I§ = int(param2);
                        if(_loc5_)
                        {
                           if(false)
                           {
                              §§goto(addr31);
                           }
                           §§goto(addr164);
                        }
                        §§goto(addr178);
                  }
                  return;
               }
               §§goto(addr118);
            }
            §§goto(addr120);
         }
         §§goto(addr164);
      }
      
      public function §6_§() : int
      {
         return this.§2!I§;
      }
      
      private function §%M§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(this.§@!o§ == null)
            {
               if(_loc3_)
               {
                  this.§@!o§ = new Sprite();
                  addr92:
               }
               §§goto(addr92);
            }
            while(true)
            {
               if(this.§@!o§.numChildren <= 0)
               {
                  if(!_loc2_)
                  {
                     §9^§.render(param1,this.§'!h§,this.§6_§(),this.§8!o§);
                  }
                  if(!(_loc2_ && _loc3_))
                  {
                     break;
                  }
               }
               else
               {
                  this.§@!o§.removeChildAt(0);
               }
            }
            return;
         }
         §§goto(addr92);
      }
      
      public function §'!h§(param1:BitmapData) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Bitmap = new Bitmap(param1,PixelSnapping.ALWAYS,true);
         if(!(_loc3_ && param1))
         {
            this.§@!o§.addChild(_loc2_);
            loop0:
            while(true)
            {
               _loc2_.x = -10;
               while(true)
               {
                  _loc2_.y = -10;
                  loop2:
                  while(!(_loc3_ && _loc3_))
                  {
                     if(_loc4_)
                     {
                        while(true)
                        {
                           addChild(this.§@!o§);
                           if(_loc4_ || param1)
                           {
                              break;
                           }
                           continue loop2;
                        }
                        return;
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr83);
      }
   }
}
