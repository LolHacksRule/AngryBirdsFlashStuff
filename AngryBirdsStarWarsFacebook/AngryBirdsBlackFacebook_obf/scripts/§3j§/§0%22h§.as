package §3j§
{
   import §+!J§.§""A§;
   import §6§.§%I§;
   import com.furusystems.dconsole2.§!!%§;
   import com.furusystems.dconsole2.core.strings.§2!Q§;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §0"h§ extends §9#'§
   {
       
      
      public var dynamic:§%I§;
      
      private var §4!z§:Point;
      
      private var §#"Y§:Point;
      
      private var §#L§:§!!%§;
      
      public function §0"h§(param1:§!!%§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§4!z§ = new Point();
            loop0:
            while(true)
            {
               this.§#"Y§ = new Point();
               loop1:
               while(true)
               {
                  super();
                  loop2:
                  while(true)
                  {
                     this.§#L§ = param1;
                     while(_loc2_)
                     {
                        this.dynamic = new §%I§(param1);
                        loop4:
                        while(!_loc3_)
                        {
                           addChild(this.dynamic);
                           loop5:
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 continue loop4;
                              }
                              if(!_loc2_)
                              {
                                 break;
                              }
                              if(!_loc2_)
                              {
                                 continue loop1;
                              }
                              buttonMode = true;
                              loop6:
                              do
                              {
                                 addEventListener(MouseEvent.MOUSE_DOWN,this.§[!&§);
                                 while(!_loc3_)
                                 {
                                    addEventListener(MouseEvent.MOUSE_OVER,this.§!!8§);
                                    while(!(_loc3_ && _loc3_))
                                    {
                                       addEventListener(MouseEvent.MOUSE_OUT,this.§3"d§);
                                       if(!(_loc3_ && this))
                                       {
                                          continue loop6;
                                       }
                                    }
                                 }
                                 continue loop5;
                              }
                              while(_loc3_);
                              
                           }
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      private function §3"d§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§#L§.§]"z§.§#!"§(§""A§.§'N§);
         }
      }
      
      private function §!!8§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§#L§.§]"z§.§#!"§(§""A§.§1!$§,§2!Q§.§&#"§.get(§2!Q§.§&#"§.§"z§),this);
         }
      }
      
      private function §[!&§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§[#8§);
            loop0:
            while(true)
            {
               stage.addEventListener(MouseEvent.MOUSE_UP,this.§@#H§);
               while(true)
               {
                  this.§#"Y§.x = stage.mouseX;
                  while(_loc2_ || _loc2_)
                  {
                     this.§#"Y§.y = stage.mouseY;
                     while(!_loc3_)
                     {
                        continue loop0;
                        this.§#L§.§]"z§.§#!"§(§""A§.§+K§,this.§#"Y§,this);
                        if(!_loc3_)
                        {
                           return;
                           addr40:
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr40);
      }
      
      private function §[#8§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§4!z§.x = stage.mouseX - this.§#"Y§.x;
            while(true)
            {
               this.§4!z§.y = stage.mouseY - this.§#"Y§.y;
               while(_loc3_ || _loc2_)
               {
                  this.§#"Y§.x = stage.mouseX;
                  loop2:
                  while(_loc3_)
                  {
                     this.§#"Y§.y = stage.mouseY;
                     while(true)
                     {
                        this.§#L§.§]"z§.§#!"§(§""A§.§+#@§,this.§4!z§,this);
                        if(_loc3_)
                        {
                           if(!(_loc2_ && this))
                           {
                              break;
                           }
                           continue loop2;
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      private function §@#H§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§4!z§.x = stage.mouseX - this.§#"Y§.x;
            while(true)
            {
               this.§4!z§.y = stage.mouseY - this.§#"Y§.y;
               addr107:
               while(true)
               {
                  this.§#"Y§.x = stage.mouseX;
               }
               addr45:
               if(!(_loc3_ || param1))
               {
                  continue;
               }
               return;
               addr52:
            }
         }
         loop2:
         while(true)
         {
            this.§#"Y§.y = stage.mouseY;
            loop3:
            while(true)
            {
               stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§[#8§);
               while(true)
               {
                  if(!_loc2_)
                  {
                     if(!_loc3_)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop3;
               }
               continue loop2;
            }
         }
         §§goto(addr52);
      }
      
      override public function onParentUpdate(param1:Rectangle) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            visible = param1.height >= 80;
            do
            {
               this.dynamic.onParentUpdate(param1);
            }
            while(_loc3_);
            
         }
      }
   }
}
