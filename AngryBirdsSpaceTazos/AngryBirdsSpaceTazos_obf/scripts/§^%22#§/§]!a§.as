package §^"#§
{
   import flash.display.Sprite;
   import flash.events.TimerEvent;
   import flash.geom.ColorTransform;
   import flash.media.SoundMixer;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   
   public class §]!a§ extends Sprite
   {
      
      public static const §[0§:uint = 4;
      
      public static const § "§:uint = 25;
      
      private static const §5!q§:uint = 30;
      
      private static var §04§:uint = 1;
      
      private static var §6"!§:uint = 2;
      
      private static var §8"0§:uint = 256;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §[0§ = 4;
         }
         loop0:
         while(true)
         {
            § "§ = 25;
            addr98:
            while(true)
            {
               §5!q§ = 30;
               do
               {
                  §04§ = 1;
                  continue loop0;
               }
               while(!(_loc2_ || _loc1_));
               
               return;
            }
         }
      }
      
      private var §^!0§:uint;
      
      private var §6"D§:int;
      
      private var §<%§:int;
      
      private var §6"%§:int;
      
      private var §4"%§:uint;
      
      private var §`7§:Array;
      
      private var §&Q§:Timer = null;
      
      private var §#",§:ByteArray;
      
      private var §6!U§:uint;
      
      private var §=+§:Number = 0;
      
      private var §+!!§:Boolean;
      
      public function §]!a§(param1:int, param2:uint, param3:uint, param4:uint)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super();
            while(true)
            {
               this.§^!0§ = param1;
               loop1:
               while(true)
               {
                  this.§4"%§ = this.§1g§(param2,param3,param4);
                  loop2:
                  while(true)
                  {
                     this.§6"D§ = param2;
                     loop3:
                     while(true)
                     {
                        this.§6"%§ = param4;
                        loop4:
                        while(true)
                        {
                           this.§<%§ = param3;
                           while(_loc6_)
                           {
                              if(_loc5_)
                              {
                                 continue loop2;
                              }
                              while(_loc6_ || param3)
                              {
                                 this.draw();
                                 if(_loc6_)
                                 {
                                    if(_loc6_)
                                    {
                                       continue loop1;
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§6!U§ = uint(§8"0§ / this.§^!0§);
            §§goto(addr60);
         }
         §§goto(addr40);
      }
      
      public function §1g§(param1:uint, param2:uint, param3:uint) : uint
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:ColorTransform;
         (_loc4_ = new ColorTransform()).redOffset = param1;
         if(_loc5_ || this)
         {
            _loc4_.greenOffset = param2;
         }
         do
         {
            _loc4_.blueOffset = param3;
         }
         while(!_loc5_);
         
         return _loc4_.color;
      }
      
      private function draw() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§'#§ = null;
         if(!(_loc3_ && _loc1_))
         {
            this.§`7§ = new Array();
         }
         var _loc1_:uint = 0;
         while(true)
         {
            if(_loc1_ >= this.§^!0§)
            {
               if(!_loc3_)
               {
                  addr216:
                  this.§#",§ = new ByteArray();
               }
               return;
            }
            this.§6"%§ -= 2;
            loop1:
            while(true)
            {
               this.§<%§ -= 2;
               if(!_loc3_)
               {
                  while(true)
                  {
                     this.§6"D§ -= 2;
                     if(!(_loc4_ || _loc3_))
                     {
                        break;
                     }
                     this.§4"%§ = this.§1g§(this.§6"D§,this.§<%§,this.§6"%§);
                     if(!_loc4_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  addr57:
               }
            }
            §§goto(addr216);
         }
      }
      
      public function start() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(this.§&Q§ == null)
            {
               if(!_loc1_)
               {
                  addr98:
                  this.§&Q§ = new Timer(§5!q§);
               }
               while(true)
               {
                  this.§&Q§.addEventListener(TimerEvent.TIMER,this.update,false,0,true);
                  loop1:
                  for(; !(_loc1_ && this); if(_loc2_ || _loc2_)
                  {
                     addr57:
                     return;
                  })
                  {
                     this.§&Q§.start();
                     loop2:
                     while(true)
                     {
                        addr29:
                        while(true)
                        {
                           this.§+!!§ = true;
                           if(!(_loc1_ && _loc2_))
                           {
                              continue loop1;
                           }
                           continue loop2;
                        }
                        §§goto(addr57);
                     }
                  }
               }
            }
            §§goto(addr29);
         }
         §§goto(addr98);
      }
      
      public function stop() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§'#§ = null;
         if(_loc3_ || this)
         {
            this.§+!!§ = false;
         }
         var _loc1_:* = uint(0);
         while(_loc1_ < this.§^!0§)
         {
            _loc2_ = this.§`7§[_loc1_];
            if(_loc3_)
            {
               _loc2_.update(0);
               if(_loc4_ && this)
               {
                  continue;
               }
            }
            §§push(_loc1_);
            if(_loc3_ || _loc2_)
            {
               §§push(uint(§§pop() + 1));
            }
            _loc1_ = §§pop();
         }
         if(!_loc4_)
         {
            this.reset();
         }
      }
      
      public function update(param1:TimerEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[3] = null;
            addr60:
            while(true)
            {
               addr51:
               while(true)
               {
                  §§push(§§newactivation());
                  while(true)
                  {
                     §§pop().§§slot[4] = NaN;
                     addr55:
                     while(true)
                     {
                        §§push(§§newactivation());
                        if(!(_loc5_ || _loc2_))
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
      }
      
      public function reset() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§'#§ = null;
         var _loc1_:* = uint(0);
         while(_loc1_ < this.§^!0§)
         {
            _loc2_ = this.§`7§[_loc1_];
            if(_loc3_)
            {
               _loc2_.reset();
               if(!_loc3_)
               {
                  continue;
               }
            }
            §§push(_loc1_);
            if(!_loc4_)
            {
               §§push(uint(§§pop() + 1));
            }
            _loc1_ = §§pop();
         }
      }
   }
}
