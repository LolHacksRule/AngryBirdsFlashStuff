package starling.events
{
   import §!!U§.DisplayObject;
   import §!!U§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §;!1§:String = "touch";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §;!1§ = "touch";
         }
      }
      
      private var §34§:Vector.<§[#W§>;
      
      private var §3v§:Boolean;
      
      private var §%"S§:Boolean;
      
      private var §`#K§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§[#W§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            super(param1,param5);
         }
         loop0:
         while(true)
         {
            §§push(this);
            if(!_loc8_)
            {
               §§pop().§34§ = !!param2 ? param2 : new Vector.<§[#W§>(0);
               while(true)
               {
                  this.§3v§ = param3;
                  loop2:
                  while(!(_loc8_ && param2))
                  {
                     loop3:
                     do
                     {
                        this.§%"S§ = param4;
                        while(true)
                        {
                           if(_loc9_)
                           {
                              if(_loc8_)
                              {
                                 break;
                              }
                              this.§`#K§ = -1;
                              if(_loc9_)
                              {
                                 continue loop3;
                              }
                              continue;
                           }
                           continue loop2;
                        }
                        continue loop0;
                     }
                     while(false);
                     
                     var _loc6_:int = param2.length;
                     var _loc7_:int = 0;
                     addr89:
                     if(_loc7_ >= _loc6_)
                     {
                        if(!_loc8_)
                        {
                           if(!(_loc9_ || param1))
                           {
                              addr105:
                              _loc7_++;
                              addr107:
                              §§goto(addr89);
                              addr140:
                           }
                           return;
                        }
                        §§goto(addr107);
                     }
                     if(param2[_loc7_].timestamp > this.§`#K§)
                     {
                        if(!(_loc8_ && this))
                        {
                           this.§`#K§ = param2[_loc7_].timestamp;
                        }
                        §§goto(addr140);
                     }
                     §§goto(addr105);
                  }
               }
            }
            §§goto(addr55);
         }
      }
      
      public function §&!N§(param1:DisplayObject, param2:String = null) : Vector.<§[#W§>
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:§[#W§ = null;
         var _loc7_:* = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§[#W§> = new Vector.<§[#W§>(0);
         var _loc4_:int = this.§34§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            §§push((_loc6_ = this.§34§[_loc5_]).target == param1);
            if(!(_loc10_ && param1))
            {
               §§push(§§pop());
               if(_loc9_ || this)
               {
                  if(!§§pop())
                  {
                     if(!(_loc10_ && param2))
                     {
                        §§pop();
                        if(!_loc10_)
                        {
                           §§push(param1 is DisplayObjectContainer);
                           if(!(_loc10_ && _loc3_))
                           {
                              §§push(§§pop());
                              loop1:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    addr247:
                                    while(true)
                                    {
                                       §§pop();
                                       addr248:
                                       while(true)
                                       {
                                          §§push((param1 as DisplayObjectContainer).contains(_loc6_.target));
                                          addr220:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                       }
                                    }
                                    addr247:
                                 }
                                 addr221:
                                 while(true)
                                 {
                                    addr222:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       loop19:
                                       while(true)
                                       {
                                          _loc7_ = §§pop();
                                          addr224:
                                          loop20:
                                          while(true)
                                          {
                                             §§push(param2);
                                             addr189:
                                             while(true)
                                             {
                                                addr191:
                                                §§push(§§pop() == null);
                                                if(!(_loc9_ || param2))
                                                {
                                                   continue loop19;
                                                }
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   continue loop1;
                                                }
                                                continue loop20;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr247);
                        }
                        §§goto(addr248);
                     }
                     §§goto(addr149);
                  }
                  §§goto(addr222);
               }
               §§goto(addr206);
            }
            §§goto(addr198);
         }
         return _loc3_;
      }
      
      public function §>!6§(param1:DisplayObject, param2:String = null) : §[#W§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Vector.<§[#W§> = this.§&!N§(param1,param2);
         if(!(_loc4_ && this))
         {
            if(_loc3_.length > 0)
            {
               if(_loc5_)
               {
                  §§goto(addr56);
               }
            }
            return null;
         }
         addr56:
         return _loc3_[0];
      }
      
      public function §79§(param1:DisplayObject) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Vector.<§[#W§> = null;
         var _loc3_:* = 0;
         if(!(_loc4_ && param1))
         {
            if(this.§>!6§(param1) == null)
            {
               if(!(_loc4_ && param1))
               {
                  §§goto(addr41);
               }
            }
            _loc2_ = this.§&!N§(param1);
            if(_loc5_ || param1)
            {
               _loc3_ = int(_loc2_.length - 1);
            }
            while(true)
            {
               §§push(_loc3_);
               if(!(_loc4_ && _loc2_))
               {
                  if(_loc5_ || _loc3_)
                  {
                     if(§§pop() < 0)
                     {
                        if(_loc5_ || _loc2_)
                        {
                           if(!(_loc4_ && param1))
                           {
                              §§push(false);
                              if(_loc5_ || _loc2_)
                              {
                                 return §§pop();
                              }
                           }
                           else
                           {
                              addr136:
                              return true;
                           }
                           return §§pop();
                        }
                        loop1:
                        while(!_loc5_)
                        {
                           while(true)
                           {
                              _loc3_ = §§pop();
                              continue loop1;
                           }
                        }
                        continue;
                     }
                     if(_loc2_[_loc3_].phase != §5X§.§"!u§)
                     {
                        break;
                     }
                     while(true)
                     {
                        §§push(_loc3_);
                     }
                  }
                  while(true)
                  {
                  }
               }
               §§goto(addr112);
            }
            §§goto(addr136);
         }
         addr41:
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§`#K§;
      }
      
      public function get §?#A§() : Vector.<§[#W§>
      {
         return this.§34§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§3v§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§%"S§;
      }
   }
}
