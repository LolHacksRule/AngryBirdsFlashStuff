package §'i§
{
   import §7r§.§=q§;
   import §;'§.§"!&§;
   import §=!#§.§2"-§;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.SharedObject;
   
   public class §<"!§ extends §"!&§ implements §8p§
   {
      
      public static const §!"!§:int = 0;
      
      public static const §8!f§:int = 1;
      
      public static const § J§:int = 640;
      
      public static const §1K§:int = 480;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §!"!§ = 0;
            while(true)
            {
               §8!f§ = 1;
               loop1:
               while(!_loc1_)
               {
                  while(true)
                  {
                     § J§ = 640;
                     do
                     {
                        §1K§ = 480;
                     }
                     while(!_loc2_);
                     
                     if(!_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr69);
      }
      
      private var §'!j§:Boolean = true;
      
      private var §'"?§:Boolean = false;
      
      private var §>!P§:String = null;
      
      private var § =§:int = 0;
      
      private var §"!q§:SharedObject = null;
      
      private var §8"=§:Boolean = false;
      
      private var §<"&§:int = 0;
      
      private var §[!"§:Point;
      
      private var §6!^§:§'!;§;
      
      public function §<"!§(param1:§'!;§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§[!"§ = new Point();
         }
         while(true)
         {
            super(param1.§8#§.§4+§);
            while(_loc3_)
            {
               this.§6!^§ = param1;
               if(_loc3_)
               {
                  return;
               }
            }
         }
      }
      
      public static function §-#§(param1:Vector.<§=q§>, param2:Number = 0) : Rectangle
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc7_:§=q§ = null;
         var _loc8_:Rectangle = null;
         var _loc3_:* = Number(Number.MAX_VALUE);
         var _loc4_:* = Number(Number.MAX_VALUE);
         §§push(-Number.MAX_VALUE);
         if(_loc11_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(-Number.MAX_VALUE);
         if(_loc11_)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         loop0:
         for each(_loc7_ in param1)
         {
            if((_loc8_ = _loc7_.§]!&§(true)) == null)
            {
               if(_loc11_)
               {
                  continue;
               }
               addr96:
            }
            else if(_loc8_.x < _loc3_)
            {
               if(!(_loc12_ && _loc3_))
               {
                  §§push(Number(_loc8_.x));
                  if(_loc11_ || param1)
                  {
                     _loc3_ = §§pop();
                     if(!(_loc12_ && param2))
                     {
                        §§goto(addr96);
                     }
                     loop1:
                     while(true)
                     {
                        §§push(Number(_loc8_.y));
                        loop2:
                        while(true)
                        {
                           _loc4_ = §§pop();
                           loop3:
                           while(true)
                           {
                              addr152:
                              loop4:
                              while(true)
                              {
                                 if(_loc8_.x + _loc8_.width > _loc5_)
                                 {
                                    if(!_loc12_)
                                    {
                                       if(_loc12_)
                                       {
                                          continue loop1;
                                       }
                                       §§push(Number(_loc8_.x + _loc8_.width));
                                       while(true)
                                       {
                                          _loc5_ = §§pop();
                                          addr129:
                                          §§push(Number(_loc8_.y + _loc8_.height));
                                          if(_loc12_ && _loc3_)
                                          {
                                             continue;
                                          }
                                          if(!(_loc11_ || param2))
                                          {
                                             continue loop2;
                                          }
                                          while(true)
                                          {
                                             _loc6_ = §§pop();
                                             addr150:
                                             while(true)
                                             {
                                                if(true)
                                                {
                                                   break loop4;
                                                }
                                                continue loop4;
                                             }
                                          }
                                       }
                                    }
                                    while(!(_loc12_ && _loc3_))
                                    {
                                    }
                                    continue loop3;
                                    addr171:
                                 }
                                 while(_loc8_.y + _loc8_.height > _loc6_)
                                 {
                                    if(_loc11_ || §<"!§)
                                    {
                                       if(_loc11_ || param1)
                                       {
                                          §§goto(addr129);
                                       }
                                       §§goto(addr171);
                                    }
                                    break;
                                 }
                                 break;
                                 §§goto(addr150);
                              }
                              continue loop0;
                           }
                        }
                     }
                     addr183:
                  }
                  §§goto(addr149);
               }
               §§goto(addr96);
            }
            if(_loc8_.y < _loc4_)
            {
               §§goto(addr183);
            }
            §§goto(addr152);
         }
         return new Rectangle(_loc3_ - param2,_loc4_ - param2,_loc5_ - _loc3_ + param2,_loc6_ - _loc4_ + param2);
      }
      
      public function initialize() : void
      {
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.init();
         }
         loop0:
         while(true)
         {
            §;"3§(true);
            do
            {
               this.§6!^§.§8#§.§4+§.objects.setGroundTextureEnabled(false);
               loop2:
               do
               {
                  §2"-§.§@&§(true);
                  while(_loc2_)
                  {
                     addEventListeners();
                     if(!(_loc1_ && _loc1_))
                     {
                        continue loop2;
                     }
                  }
                  continue loop0;
               }
               while(!_loc2_);
               
            }
            while(!_loc2_);
            
            return;
         }
      }
      
      public function activate() : void
      {
      }
      
      override public function update(param1:Number) : void
      {
      }
      
      public function get §<!+§() : Boolean
      {
         return this.§'!j§;
      }
      
      public function §=!§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §9q§.background.resetLevelBackground(param1);
         }
      }
      
      public function get §;o§() : Point
      {
         return this.§[!"§;
      }
      
      public function §'E§() : Boolean
      {
         return false;
      }
      
      public function §>"5§(param1:String) : Boolean
      {
         return false;
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            dispatchEvent(new MouseEvent(MouseEvent.MOUSE_UP));
         }
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            dispatchEvent(new MouseEvent(MouseEvent.MOUSE_DOWN));
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.handleMouseMove(param1,param2);
            while(true)
            {
               if(this.§[!"§ != null)
               {
                  this.§[!"§.setTo(param1,param2);
                  loop1:
                  while(true)
                  {
                     if(_loc3_ || param1)
                     {
                        if(_loc4_)
                        {
                           break;
                        }
                        continue;
                     }
                     addr94:
                     addr94:
                     while(true)
                     {
                        continue loop1;
                     }
                  }
                  continue;
               }
               while(true)
               {
                  this.§[!"§ = new Point(param1,param2);
               }
            }
         }
         §§goto(addr94);
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            dispatchEvent(param1);
         }
      }
   }
}
