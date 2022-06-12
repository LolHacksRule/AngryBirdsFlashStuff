package §-!h§
{
   import § " §.§+!p§;
   import § " §.§2!!§;
   import §-!+§.§;!B§;
   import §4!e§.§6Y§;
   import com.rovio.assets.§8B§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class § ?§ extends §;!B§
   {
       
      
      private var §3"1§:§6Y§;
      
      private var §?u§:MovieClip;
      
      private var §=m§:§2!!§;
      
      public function § ?§()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
         }
         var _loc1_:Class = §8B§.§6"C§("FriendSelecterCheckbox");
         if(_loc3_ || this)
         {
            this.§?u§ = new _loc1_();
            loop0:
            while(true)
            {
               this.§3"1§ = new §6Y§(this.§?u§,true);
               while(true)
               {
                  this.§3"1§.§[%§.addEventListener(Event.CHANGE,this.§6"@§);
                  loop2:
                  while(!_loc2_)
                  {
                     while(true)
                     {
                        addChild(this.§3"1§.§[%§);
                        if(!_loc2_)
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
         §§goto(addr85);
      }
      
      private function §6"@§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(§>">§)
            {
               if(!_loc2_)
               {
                  §>">§.selected = this.§3"1§.selected;
               }
            }
         }
      }
      
      override public function set data(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            cacheAsBitmap = true;
            while(true)
            {
               §§push(this.§=m§);
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        if(this.§?u§.contains(this.§=m§))
                        {
                           while(true)
                           {
                              this.§?u§.removeChild(this.§=m§);
                              addr403:
                              while(true)
                              {
                              }
                           }
                           addr398:
                        }
                        while(true)
                        {
                           §§push(this.§=m§);
                           addr386:
                           while(true)
                           {
                              §§pop().dispose();
                              addr387:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr392:
                  }
                  while(true)
                  {
                     this.§?u§.PlayernameTextfield.text = "";
                     while(true)
                     {
                        §§push(this.§3"1§);
                        loop10:
                        while(true)
                        {
                           §§pop().§[%§.visible = false;
                           addr358:
                           while(_loc3_ || _loc3_)
                           {
                              if(param1 == null)
                              {
                                 addr350:
                                 return;
                              }
                              while(true)
                              {
                                 §>">§ = param1;
                                 addr338:
                                 while(_loc3_ || this)
                                 {
                                    this.§?u§.PlayernameTextfield.text = param1.name;
                                    while(true)
                                    {
                                       §§push(this.§3"1§);
                                       continue loop10;
                                    }
                                 }
                                 addr351:
                                 §§goto(addr398);
                              }
                           }
                           §§goto(addr403);
                        }
                     }
                  }
                  if(_loc2_ && _loc3_)
                  {
                     continue;
                  }
                  §§push(35);
                  if(_loc3_)
                  {
                     if(!_loc2_)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           §§pop().height = §§pop();
                           §§goto(addr88);
                        }
                        §§goto(addr273);
                     }
                     §§goto(addr212);
                  }
                  §§goto(addr118);
               }
            }
         }
         §§goto(addr276);
      }
   }
}
