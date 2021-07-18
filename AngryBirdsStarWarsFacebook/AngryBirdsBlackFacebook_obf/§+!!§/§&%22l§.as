package §+!!§
{
   import §+D§.§]B§;
   import §,!,§.§0!d§;
   import §7"a§.§@4§;
   import com.rovio.assets.§5_§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §&"l§ extends §0!d§
   {
      
      private static var §2!D§:Object;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §2!D§ = {};
         }
      }
      
      private var mAsset:MovieClip;
      
      private var §#!1§:§]B§;
      
      private var §?!a§:§@4§;
      
      private var §=#Q§:Boolean;
      
      public function §&"l§(param1:Boolean = false)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super();
            loop0:
            while(true)
            {
               this.§=#Q§ = param1;
               if(!_loc4_)
               {
                  §§push(this);
                  §§push(§5_§);
                  if(_loc3_ || _loc3_)
                  {
                     §§pop().mAsset = new §§pop().§`"G§(!!param1 ? "RequestsItemRendererAssetQuick" : "RequestsItemRendererAsset")();
                     if(_loc3_)
                     {
                        addChild(this.mAsset);
                        if(!(_loc4_ && _loc3_))
                        {
                           loop1:
                           while(true)
                           {
                              this.§#!1§ = new §]B§(this.mAsset.chkSelected);
                              if(_loc3_)
                              {
                                 this.mAsset.chkSelected.addEventListener(Event.CHANGE,this.§>&§);
                                 if(_loc3_ || param1)
                                 {
                                    if(_loc4_)
                                    {
                                       continue loop0;
                                    }
                                    while(true)
                                    {
                                       if(true)
                                       {
                                          this.mAsset.mcMask.cacheAsBitmap = this.mAsset.txtName.cacheAsBitmap = true;
                                          if(_loc3_)
                                          {
                                             break loop1;
                                          }
                                       }
                                       continue loop1;
                                    }
                                 }
                                 break;
                              }
                              break;
                           }
                        }
                        this.mAsset.txtName.mask = this.mAsset.mcMask;
                        break;
                     }
                     break;
                  }
                  §§goto(addr85);
               }
               break;
            }
            return;
         }
         §§goto(addr37);
      }
      
      private function §>&§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§ !%§.§0" § = this.§#!1§.§0" §;
         }
         do
         {
            dispatchEvent(new §8";§(§8";§.§&!b§,data,true));
         }
         while(!_loc2_);
         
      }
      
      override public function set data(param1:Object) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§<!6§();
            loop0:
            while(true)
            {
               this.mAsset.chkSelected.removeEventListener(Event.CHANGE,this.§>&§);
               loop1:
               while(true)
               {
                  super.data = param1;
                  while(true)
                  {
                     if(data)
                     {
                        loop3:
                        while(true)
                        {
                           visible = true;
                           addr241:
                           addr251:
                           while(true)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 this.mAsset.txtName.text = !!this.§=#Q§ ? this.§ !%§.name.split(" ")[0] : this.§ !%§.name;
                                 while(_loc3_ || _loc2_)
                                 {
                                    continue loop1;
                                 }
                                 addr222:
                              }
                              else
                              {
                                 addr255:
                                 visible = false;
                              }
                              return;
                           }
                           while(true)
                           {
                              continue loop3;
                           }
                        }
                     }
                     §§goto(addr255);
                     addr101:
                     if(_loc4_ && this)
                     {
                        continue;
                     }
                     addr75:
                     this.mAsset.addChild(this.§?!a§);
                     addr66:
                     this.§?!a§.x = 37;
                     addr62:
                     addr81:
                     addr65:
                     if(!(_loc4_ && param1))
                     {
                        §§push(this.§?!a§);
                        if(!(_loc4_ && this))
                        {
                           if(_loc3_ || _loc3_)
                           {
                              §§push(2);
                              if(_loc3_)
                              {
                                 §§pop().y = §§pop();
                                 if(!_loc4_)
                                 {
                                    if(_loc3_)
                                    {
                                       if(!(_loc4_ && this))
                                       {
                                          if(_loc3_ || param1)
                                          {
                                             if(!_loc4_)
                                             {
                                                if(false)
                                                {
                                                   §§goto(addr62);
                                                }
                                                §§goto(addr279);
                                             }
                                             continue loop0;
                                          }
                                          loop7:
                                          while(!_loc4_)
                                          {
                                             addr200:
                                             §§push(this.§#!1§);
                                             if(_loc3_)
                                             {
                                                if(§§pop().§0" §)
                                                {
                                                   while(true)
                                                   {
                                                      this.mAsset.chkSelected.mcCheck.gotoAndStop(this.mAsset.chkSelected.mcCheck.totalFrames);
                                                      if(!_loc3_)
                                                      {
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr307);
                                                   addr178:
                                                }
                                                while(true)
                                                {
                                                   if(!§2!D§[this.§ !%§.id])
                                                   {
                                                      loop10:
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            §2!D§[this.§ !%§.id] = [];
                                                            while(true)
                                                            {
                                                               addr120:
                                                               if(_loc3_ || param1)
                                                               {
                                                                  continue loop10;
                                                               }
                                                            }
                                                            addr170:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr178);
                                                         }
                                                         §§goto(addr307);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(§2!D§[this.§ !%§.id].length <= 0)
                                                      {
                                                         this.§?!a§ = new §@4§(this.§ !%§.id);
                                                         break;
                                                      }
                                                      if(!_loc4_)
                                                      {
                                                         §§goto(addr120);
                                                      }
                                                      §§goto(addr144);
                                                      §§goto(addr170);
                                                   }
                                                   addr92:
                                                   if(_loc3_ || param1)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         §§goto(addr101);
                                                      }
                                                      §§goto(addr241);
                                                   }
                                                   §§goto(addr144);
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§pop().§0" § = this.§ !%§.§0" §;
                                                   continue loop7;
                                                   §§goto(addr200);
                                                }
                                                addr194:
                                             }
                                          }
                                          §§goto(addr251);
                                       }
                                       §§goto(addr81);
                                    }
                                    §§goto(addr75);
                                 }
                                 §§goto(addr307);
                              }
                              §§goto(addr66);
                           }
                           §§goto(addr65);
                        }
                        addr279:
                        this.§?!a§.scaleX = this.§?!a§.scaleY = 30 / 50;
                        if(!(_loc4_ && param1))
                        {
                           addr307:
                           this.mAsset.chkSelected.addEventListener(Event.CHANGE,this.§>&§);
                        }
                        return;
                     }
                     §§goto(addr92);
                  }
               }
            }
         }
         §§goto(addr251);
      }
      
      private function §<!6§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§?!a§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§?!a§);
                     addr95:
                     loop1:
                     while(true)
                     {
                        if(§§pop().parent == this.mAsset)
                        {
                           if(_loc2_)
                           {
                              while(true)
                              {
                                 this.mAsset.removeChild(this.§?!a§);
                              }
                              addr111:
                           }
                           while(true)
                           {
                              addr37:
                              if(_loc2_ || _loc2_)
                              {
                                 addr44:
                                 if(!_loc1_)
                                 {
                                    break loop1;
                                 }
                                 continue loop1;
                              }
                           }
                           addr116:
                        }
                        while(true)
                        {
                           if(!§2!D§[this.§ !%§.id])
                           {
                              if(_loc2_)
                              {
                                 §2!D§[this.§ !%§.id] = [];
                              }
                              loop4:
                              while(true)
                              {
                                 addr47:
                                 while(true)
                                 {
                                    §2!D§[this.§ !%§.id].push(this.§?!a§);
                                    do
                                    {
                                       this.§?!a§ = null;
                                    }
                                    while(!_loc2_);
                                    
                                    if(!_loc1_)
                                    {
                                       break;
                                    }
                                    continue loop4;
                                 }
                                 §§goto(addr37);
                              }
                           }
                           §§goto(addr47);
                           §§goto(addr116);
                        }
                        §§goto(addr44);
                     }
                  }
               }
               return;
            }
            §§goto(addr95);
         }
         §§goto(addr111);
      }
      
      private function get § !%§() : §`"b§
      {
         return §`"b§(data);
      }
   }
}
