package §7g§
{
   import §+!J§.§""A§;
   import §1"b§.§>l§;
   import §]"r§.§@D§;
   import com.furusystems.dconsole2.§!!%§;
   import com.furusystems.dconsole2.core.style.§>"!§;
   import com.furusystems.dconsole2.core.style.§?#O§;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   
   public class §0"a§ extends Sprite
   {
       
      
      private var _name:String;
      
      private var §=§:TextField;
      
      private var §=!l§:Boolean;
      
      private var §5"d§:§>l§;
      
      public function §0"a§(param1:§!!%§, param2:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super();
            loop0:
            while(true)
            {
               this.§5"d§ = param1.§]"z§;
               loop1:
               while(true)
               {
                  buttonMode = true;
                  loop2:
                  while(true)
                  {
                     this._name = param2;
                     while(true)
                     {
                        this.§=§ = §@D§.§3!x§(param2);
                        while(_loc4_)
                        {
                           this.§=§.mouseEnabled = false;
                           while(!_loc3_)
                           {
                              this.§=§.autoSize = TextFieldAutoSize.LEFT;
                              while(!_loc3_)
                              {
                                 while(!(_loc3_ && param1))
                                 {
                                    continue loop0;
                                    if(_loc4_ || _loc3_)
                                    {
                                       return;
                                    }
                                 }
                              }
                           }
                        }
                        continue loop1;
                        addr53:
                        while(_loc4_ || param1)
                        {
                           continue loop2;
                           addEventListener(MouseEvent.CLICK,this.§^!R§,false,0,true);
                           if(!(_loc4_ || param2))
                           {
                              continue;
                           }
                           §§goto(addr41);
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            addChild(this.§=§);
            §§goto(addr83);
         }
      }
      
      public function §5p§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.active = this.§=!l§;
         }
      }
      
      private function §^!R§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§5"d§.§#!"§(§""A§.§+!K§,this._name,this);
         }
      }
      
      public function set active(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§=!l§ = param1;
            while(true)
            {
               graphics.clear();
               loop1:
               while(true)
               {
                  if(this.§=!l§)
                  {
                     graphics.lineStyle(0,§?#O§.§&#,§);
                     loop2:
                     while(true)
                     {
                        if(_loc3_)
                        {
                           if(_loc3_)
                           {
                              graphics.beginFill(§?#O§.§9>§);
                              continue loop1;
                           }
                           addr150:
                           while(true)
                           {
                              graphics.lineStyle(0,§?#O§.§&#,§);
                              addr165:
                              while(true)
                              {
                                 graphics.beginFill(§?#O§.§,1§);
                              }
                           }
                        }
                        while(true)
                        {
                           this.§=§.textColor = §?#O§.§?"F§;
                           loop7:
                           while(true)
                           {
                              loop5:
                              while(true)
                              {
                                 graphics.drawRect(0,0,this.§=§.textWidth + 4,§>"!§.§6R§);
                                 addr61:
                                 addr92:
                                 while(_loc3_ || param1)
                                 {
                                    continue loop2;
                                 }
                                 while(true)
                                 {
                                    if(!(_loc2_ && this))
                                    {
                                       continue loop5;
                                    }
                                    continue loop7;
                                    §§goto(addr61);
                                 }
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
                  §§goto(addr150);
               }
               if(!(_loc3_ || this))
               {
                  continue;
               }
               this.§=§.textColor = §?#O§.§,"Q§;
               §§goto(addr92);
            }
         }
         §§goto(addr165);
      }
      
      public function get active() : Boolean
      {
         return this.§=!l§;
      }
      
      public function get §[!_§() : String
      {
         return this._name;
      }
   }
}
