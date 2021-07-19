package §,!k§
{
   import §!!c§.§]# §;
   import §"!t§.§5"U§;
   import §+!J§.§""A§;
   import §1"b§.§7",§;
   import com.furusystems.dconsole2.§!!%§;
   import com.furusystems.dconsole2.core.strings.§2!Q§;
   import com.furusystems.dconsole2.core.style.§6!x§;
   import com.furusystems.dconsole2.core.style.§>"!§;
   import com.furusystems.dconsole2.core.style.§?#O§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.utils.getTimer;
   
   public class Assistant extends Sprite implements §5"U§, §]# §
   {
       
      
      private var §1n§:TextField;
      
      private var §!!S§:Boolean = true;
      
      private var §2C§:BitmapData;
      
      private var §<;§:Bitmap;
      
      private var §@#>§:Number = 0;
      
      private var §9!8§:Number = 0;
      
      private var §]"p§:§7#<§;
      
      public function Assistant(param1:§!!%§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§<;§ = new Bitmap();
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.§]"p§ = new §7#<§(param1);
                  while(true)
                  {
                     this.§1n§ = new TextField();
                     while(true)
                     {
                        this.§1n§.background = true;
                        while(true)
                        {
                           this.§1n§.tabEnabled = false;
                           loop5:
                           while(true)
                           {
                              this.§1n§.embedFonts = §6!x§.§9!_§.charAt(0) != "_";
                              addr238:
                              while(true)
                              {
                                 this.§1n§.mouseEnabled = false;
                                 continue loop5;
                              }
                           }
                        }
                     }
                     if(_loc2_ || this)
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr56);
      }
      
      private function §4R§(param1:§7",§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            if(this.text != "")
            {
               loop0:
               while(true)
               {
                  if(this.§1n§.maxScrollH > 0)
                  {
                     if(_loc3_ || param1)
                     {
                        §§push(this);
                        §§push(this.§@#>§);
                        if(_loc3_ || _loc2_)
                        {
                           §§push(§§pop() + (getTimer() - this.§9!8§));
                        }
                        §§pop().§@#>§ = §§pop();
                        while(true)
                        {
                           while(true)
                           {
                              this.§1n§.scrollH = (Math.sin(this.§@#>§ / 1000) + 1) / 2 * this.§1n§.maxScrollH;
                              if(_loc4_ && _loc2_)
                              {
                                 break loop0;
                              }
                              if(!_loc3_)
                              {
                                 return;
                              }
                              addr120:
                              this.§9!8§ = getTimer();
                              if(_loc4_ && _loc2_)
                              {
                                 break loop0;
                              }
                              if(!_loc3_)
                              {
                                 break;
                              }
                              if(!(_loc4_ && _loc3_))
                              {
                                 if(true)
                                 {
                                    break loop0;
                                 }
                                 continue;
                              }
                              continue loop0;
                           }
                        }
                        addr115:
                     }
                     break;
                  }
                  this.§@#>§ = this.§9!8§ = 0;
                  break;
               }
               return;
            }
            §§goto(addr120);
         }
         §§goto(addr115);
      }
      
      private function §,"Z§(param1:§7",§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.clear();
         }
      }
      
      private function §@"H§(param1:§7",§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.text = param1.data.toString();
         }
      }
      
      private function §[!&§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            stage.addEventListener(MouseEvent.MOUSE_UP,this.§@#H§);
            loop0:
            while(true)
            {
               this.§2C§ = new BitmapData(this.§1n§.width,this.§1n§.height,false,0);
               while(true)
               {
                  this.§2C§.draw(this.§1n§);
                  while(!_loc3_)
                  {
                     continue loop0;
                     addr48:
                     if(_loc2_)
                     {
                        this.§1n§.visible = false;
                        addr60:
                        if(_loc3_ && _loc2_)
                        {
                           while(!(_loc3_ && _loc3_))
                           {
                              §§goto(addr48);
                              §§goto(addr60);
                           }
                           while(true)
                           {
                              this.§<;§.visible = true;
                              §§goto(addr41);
                           }
                           addr41:
                           addr67:
                        }
                        return;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§<;§.bitmapData = this.§2C§;
            §§goto(addr67);
         }
      }
      
      private function §@#H§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            stage.removeEventListener(MouseEvent.MOUSE_UP,this.§@#H§);
            while(true)
            {
               this.§2C§.dispose();
               addr45:
               if(_loc3_ && this)
               {
                  continue;
               }
               return;
               addr52:
            }
         }
         while(true)
         {
            this.§<;§.visible = false;
            while(_loc2_ || this)
            {
               this.§1n§.visible = true;
               if(_loc3_ && _loc2_)
               {
                  continue;
               }
               §§goto(addr45);
            }
         }
         §§goto(addr52);
      }
      
      public function get text() : String
      {
         return this.§1n§.text;
      }
      
      public function set text(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            this.§1n§.text = param1;
            if(_loc4_ || _loc3_)
            {
               this.§1n§.scrollH = 0;
               if(_loc4_)
               {
                  this.§@#>§ = this.§9!8§ = 0;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr77:
                     this.§!!S§ = false;
                  }
                  return;
               }
            }
         }
         §§goto(addr77);
      }
      
      public function §3!W§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§1n§.text = param1;
         }
         do
         {
            this.§!!S§ = true;
         }
         while(!(_loc3_ || this));
         
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§3!W§(§2!Q§.§&#"§.get(§2!Q§.§&#"§.§;#$§));
         }
         do
         {
            this.§!!S§ = true;
         }
         while(_loc2_ && this);
         
      }
      
      public function onParentUpdate(param1:Rectangle) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            y = param1.y;
            loop0:
            while(true)
            {
               x = param1.x;
               while(true)
               {
                  this.§1n§.height = §>"!§.§6R§;
                  loop2:
                  while(!(_loc3_ && _loc3_))
                  {
                     while(true)
                     {
                        this.§1n§.width = param1.width;
                        do
                        {
                           this.§]"p§.x = param1.width - this.§]"p§.width;
                        }
                        while(!(_loc2_ || this));
                        
                        if(_loc2_ || param1)
                        {
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr90);
      }
      
      public function §-!B§(param1:§7",§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§1n§.backgroundColor = §?#O§.§`!p§;
         }
         do
         {
            this.§1n§.textColor = §?#O§.§3"r§;
         }
         while(_loc3_);
         
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
      
      public function get §7W§() : Boolean
      {
         return this.§!!S§;
      }
      
      public function get §,!J§() : §7#<§
      {
         return this.§]"p§;
      }
   }
}
