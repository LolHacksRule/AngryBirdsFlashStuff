package §]"r§
{
   import §!!c§.§]# §;
   import §"!t§.§5"U§;
   import §+!J§.§""A§;
   import §1"b§.§7",§;
   import com.furusystems.dconsole2.DConsole;
   import com.furusystems.dconsole2.core.strings.§2!Q§;
   import com.furusystems.dconsole2.core.style.§>"!§;
   import com.furusystems.dconsole2.core.style.§?#O§;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class § k§ extends Sprite implements §5"U§, §]# §
   {
       
      
      private var §&"_§:Boolean = false;
      
      private var §,!U§:Rectangle;
      
      private var §[![§:DConsole;
      
      public function § k§(param1:DConsole)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            while(true)
            {
               this.§[![§ = param1;
               loop1:
               while(true)
               {
                  doubleClickEnabled = true;
                  loop2:
                  while(true)
                  {
                     tabEnabled = false;
                     while(true)
                     {
                        addEventListener(MouseEvent.ROLL_OVER,this.§!!§);
                        loop4:
                        while(true)
                        {
                           addEventListener(MouseEvent.ROLL_OUT,this.§3"§);
                           while(true)
                           {
                              addEventListener(MouseEvent.MOUSE_OVER,this.§!!8§);
                              while(_loc3_ || _loc2_)
                              {
                                 continue loop4;
                                 while(!(_loc2_ && param1))
                                 {
                                    param1.§]"z§.addCallback(§""A§.§4#I§,this.§-!B§);
                                    if(_loc3_)
                                    {
                                       addr34:
                                       if(!(_loc2_ && param1))
                                       {
                                          continue loop2;
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               if(!(_loc3_ || param1))
               {
                  continue;
               }
               alpha = 0;
               §§goto(addr53);
            }
         }
      }
      
      private function §3"d§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§[![§.§]"z§.§#!"§(§""A§.§'N§);
         }
      }
      
      private function §!!8§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§[![§.§]"z§.§#!"§(§""A§.§1!$§,§2!Q§.§&#"§.get(§2!Q§.§&#"§.§"!m§),this);
         }
      }
      
      private function §3"§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!this.§<p§)
            {
               while(true)
               {
                  alpha = 0;
                  loop1:
                  while(_loc2_ || _loc2_)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        while(true)
                        {
                           Mouse.cursor = MouseCursor.AUTO;
                           if(_loc2_)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        return;
                        addr69:
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr69);
      }
      
      private function §!!§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            alpha = 1;
            do
            {
               Mouse.cursor = MouseCursor.HAND;
            }
            while(!_loc2_);
            
         }
      }
      
      public function onParentUpdate(param1:Rectangle) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            this.§,!U§ = param1;
            loop0:
            while(true)
            {
               graphics.clear();
               addr65:
               while(true)
               {
                  x = param1.x;
                  continue loop0;
               }
            }
         }
         while(true)
         {
            graphics.beginFill(§?#O§.§,"-§,1);
            if(_loc3_ || this)
            {
               if(!_loc4_)
               {
                  if(true)
                  {
                     break;
                  }
                  §§goto(addr41);
               }
               §§goto(addr65);
            }
            §§goto(addr46);
         }
         §§push(§>"!§.§6R§ / 2);
         if(_loc3_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            graphics.drawRect(0,0,param1.width,_loc2_);
            while(true)
            {
               graphics.endFill();
               loop7:
               while(!(_loc4_ && _loc2_))
               {
                  graphics.lineStyle(0,§?#O§.§+?§);
                  while(true)
                  {
                     graphics.moveTo(3,_loc2_ / 2);
                     while(!_loc4_)
                     {
                        if(_loc3_)
                        {
                           graphics.lineTo(param1.width - 3,_loc2_ / 2);
                           if(!(_loc4_ && param1))
                           {
                              return;
                           }
                           continue;
                           continue;
                        }
                        continue loop7;
                     }
                  }
               }
            }
         }
         §§goto(addr136);
      }
      
      public function §-!B§(param1:§7",§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            graphics.clear();
            loop0:
            while(true)
            {
               x = this.§,!U§.x;
               loop1:
               while(true)
               {
                  addr29:
                  while(true)
                  {
                     y = this.§,!U§.y;
                     addr35:
                     while(true)
                     {
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr27);
      }
      
      public function get rect() : Rectangle
      {
         return getRect(parent);
      }
      
      public function get §9#$§() : Number
      {
         return 0;
      }
      
      public function get §>"Z§() : Number
      {
         return 0;
      }
      
      public function get §<p§() : Boolean
      {
         return this.§&"_§;
      }
      
      public function set §<p§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§&"_§ = param1;
         }
         do
         {
            if(param1)
            {
               if(_loc2_ || this)
               {
                  alpha = 1;
               }
            }
            else
            {
               alpha = 0;
               if(_loc2_)
               {
                  §§goto(addr19);
               }
            }
         }
         while(_loc3_ && _loc3_);
         
         addr19:
      }
   }
}
