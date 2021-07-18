package §1!0§
{
   import § "!§.§ ! §;
   import § "!§.§!"O§;
   import §%i§.§9!r§;
   import §2!o§.§2"3§;
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §@"[§ extends §2"3§
   {
       
      
      private var §<"M§:§9!r§;
      
      private var §!!j§:MovieClip;
      
      private var §1%§:§ ! §;
      
      public function §@"[§()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
         }
         var _loc1_:Class = §?q§.§ q§("FriendSelecterCheckbox");
         if(_loc2_)
         {
            this.§!!j§ = new _loc1_();
            while(true)
            {
               this.§<"M§ = new §9!r§(this.§!!j§,true);
               §§goto(addr98);
            }
         }
         addr98:
         while(true)
         {
            this.§<"M§.§>R§.addEventListener(Event.CHANGE,this.§%"§);
            do
            {
               addChild(this.§<"M§.§>R§);
            }
            while(!(_loc2_ || _loc3_));
            
            if(_loc2_ || _loc3_)
            {
               if(_loc2_ || _loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §%"§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(§+]§)
            {
               if(_loc2_)
               {
                  addr27:
                  §+]§.selected = this.§<"M§.selected;
               }
            }
            return;
         }
         §§goto(addr27);
      }
      
      override public function set data(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            cacheAsBitmap = true;
         }
         loop0:
         while(true)
         {
            §§push(this.§1%§);
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     if(this.§!!j§.contains(this.§1%§))
                     {
                        addr363:
                        while(true)
                        {
                           this.§!!j§.removeChild(this.§1%§);
                           addr368:
                           while(true)
                           {
                           }
                        }
                        addr363:
                     }
                     while(true)
                     {
                        §§push(this.§1%§);
                        addr351:
                        while(true)
                        {
                           §§pop().dispose();
                           addr352:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr357:
               }
               while(true)
               {
                  this.§!!j§.PlayernameTextfield.text = "";
                  while(true)
                  {
                     §§push(this.§<"M§);
                     loop10:
                     while(true)
                     {
                        §§pop().§>R§.visible = false;
                        loop11:
                        while(true)
                        {
                           if(param1 != null)
                           {
                              while(true)
                              {
                                 §+]§ = param1;
                                 while(_loc3_)
                                 {
                                    this.§!!j§.PlayernameTextfield.text = param1.name;
                                    while(!_loc2_)
                                    {
                                       §§push(this.§<"M§);
                                       loop15:
                                       while(true)
                                       {
                                          §§pop().selected = param1.selected;
                                          addr293:
                                          while(true)
                                          {
                                             if(!(_loc2_ && param1))
                                             {
                                                continue loop15;
                                             }
                                             §§goto(addr363);
                                          }
                                          continue loop10;
                                       }
                                    }
                                    continue loop0;
                                 }
                                 continue loop11;
                              }
                           }
                           §§goto(addr322);
                        }
                     }
                  }
               }
               if(_loc2_ && this)
               {
                  continue;
               }
               §§goto(addr184);
               §§push(50);
            }
         }
      }
   }
}
