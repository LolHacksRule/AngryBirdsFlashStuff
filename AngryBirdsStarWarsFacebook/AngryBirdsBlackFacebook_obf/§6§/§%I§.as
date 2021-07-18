package §6§#9
{
   import §!!c§.§]# §;
   import §"!t§.§5"U§;
   import §+!J§.§""A§;
   import §1"b§.§7",§;
   import com.furusystems.dconsole2.§!!%§;
   import com.furusystems.dconsole2.core.style.§6!x§;
   import com.furusystems.dconsole2.core.style.§>"!§;
   import com.furusystems.dconsole2.core.style.§?#O§;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class §%I§ extends Sprite implements §5"U§, §]# §
   {
       
      
      private var §4N§:TextField;
      
      private var _rect:Rectangle;
      
      private var §#L§:§!!%§;
      
      public function §%I§(param1:§!!%§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            this.§4N§ = new TextField();
            while(true)
            {
               super();
               loop1:
               while(_loc3_ || this)
               {
                  while(true)
                  {
                     this.§#L§ = param1;
                     if(_loc4_ && _loc2_)
                     {
                        break;
                     }
                     if(!(_loc3_ || this))
                     {
                        continue loop1;
                     }
                     this.§4N§.height = §>"!§.§6R§;
                     if(_loc3_ || _loc3_)
                     {
                        if(false)
                        {
                           §§goto(addr39);
                        }
                        this.§4N§.selectable = this.§4N§.mouseEnabled = false;
                        if(!_loc4_)
                        {
                           this.§4N§.defaultTextFormat = §6!x§.§'#N§;
                        }
                        §§goto(addr146);
                     }
                     §§goto(addr165);
                     continue loop1;
                  }
                  loop6:
                  while(true)
                  {
                     if(true)
                     {
                        this.§4N§.x = this.§4N§.y = 1;
                        if(!(_loc4_ && _loc2_))
                        {
                           addChild(this.§4N§);
                           break;
                           addr165:
                        }
                        break;
                     }
                     loop5:
                     while(true)
                     {
                        this.§4N§.textColor = §?#O§.§;!e§;
                        addr134:
                        while(true)
                        {
                           this.§4N§.text = "Doomsday Console II";
                           if(!(_loc3_ || param1))
                           {
                              break loop6;
                           }
                           if(!_loc3_)
                           {
                              continue;
                           }
                           addr112:
                           if(!(_loc4_ && _loc2_))
                           {
                              addr119:
                              if(_loc3_ || _loc3_)
                              {
                                 continue loop6;
                              }
                              addr146:
                              while(true)
                              {
                                 this.§4N§.embedFonts = true;
                                 §§goto(addr119);
                              }
                           }
                           while(true)
                           {
                              continue loop5;
                              §§goto(addr112);
                           }
                        }
                     }
                  }
                  do
                  {
                     this.§#L§.§]"z§.addCallback(§""A§.§4#I§,this.§-!B§);
                  }
                  while(!_loc3_);
                  
                  return;
               }
            }
         }
         §§goto(addr134);
      }
      
      public function §>"x§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§4N§.text = param1;
         }
      }
      
      public function onParentUpdate(param1:Rectangle) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this._rect = param1;
         }
         loop0:
         while(true)
         {
            graphics.clear();
            while(true)
            {
               graphics.beginFill(§?#O§.§'!N§);
               while(!_loc2_)
               {
                  continue loop0;
                  while(!(_loc2_ && _loc2_))
                  {
                     graphics.endFill();
                     while(_loc3_ || this)
                     {
                        this.§4N§.width = param1.width;
                        if(!_loc2_)
                        {
                           return;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §-!B§(param1:§7",§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§4N§.textColor = §?#O§.§;!e§;
            while(true)
            {
               graphics.clear();
               addr80:
               while(true)
               {
                  graphics.beginFill(§?#O§.§'!N§);
               }
               addr53:
               if(!(_loc3_ && this))
               {
                  graphics.endFill();
                  addr60:
                  if(_loc3_)
                  {
                     loop3:
                     while(true)
                     {
                        if(!_loc3_)
                        {
                           if(_loc3_)
                           {
                              break;
                           }
                           §§goto(addr53);
                        }
                        addr66:
                        while(true)
                        {
                           graphics.drawRect(0,0,this._rect.width,§>"!§.§6R§);
                           continue loop3;
                        }
                     }
                     §§goto(addr80);
                  }
                  return;
               }
            }
         }
         §§goto(addr66);
      }
      
      public function get §9#$§() : Number
      {
         return 0;
      }
      
      public function get §>"Z§() : Number
      {
         return 0;
      }
      
      public function get rect() : Rectangle
      {
         return getRect(this);
      }
   }
}
