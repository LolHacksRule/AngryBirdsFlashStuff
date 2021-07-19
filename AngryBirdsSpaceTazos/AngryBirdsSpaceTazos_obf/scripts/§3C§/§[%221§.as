package §3C§
{
   import §0N§.§0!g§;
   import §7!H§.§1#§;
   import §7!H§.§8"6§;
   
   public class §["1§ extends §9!;§
   {
      
      private static var §>!+§:Class;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §>!+§ = §;t§;
         }
      }
      
      private var §package§:Boolean;
      
      public function §["1§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §>"2§ = true;
         }
         do
         {
            §1"$§ = false;
            do
            {
               super(§1#§.§1!W§,§8"6§.§ K§,§0!g§.§[!y§(§>!+§));
            }
            while(_loc1_);
            
         }
         while(!_loc2_);
         
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.init();
            while(true)
            {
               this.§package§ = (§ !g§.§;!'§ as §`Y§).§&,§.§9Z§.§%_§;
               addr103:
               if(_loc2_ && this)
               {
                  continue;
               }
               addr116:
               (§ !g§.§;!'§ as §`Y§).§&,§.§4"1§(false);
               return;
               addr117:
               addr115:
               addr112:
            }
         }
         while(true)
         {
            §§push(§ !g§.§;!'§);
            if(!(_loc2_ && _loc2_))
            {
               §§push((§§pop() as §`Y§).§&,§);
               if(_loc1_ || _loc1_)
               {
                  if(§§pop().§ w§())
                  {
                     if(!(_loc2_ && this))
                     {
                        §§goto(addr103);
                     }
                  }
                  else
                  {
                     §§push(§ !g§.§;!'§);
                     if(!_loc1_)
                     {
                        break;
                     }
                     §§push((§§pop() as §`Y§).§&,§);
                     if(!(_loc2_ && this))
                     {
                        §§push(false);
                        if(_loc1_ || _loc2_)
                        {
                           §§pop().§""8§(§§pop());
                           if(_loc1_)
                           {
                              continue;
                           }
                        }
                        §§goto(addr117);
                     }
                     else
                     {
                        §§goto(addr115);
                     }
                  }
               }
               §§goto(addr116);
            }
            break;
         }
         §§goto(addr112);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§package§);
            if(!(_loc1_ && this))
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     addr82:
                     §§push(§ !g§.§;!'§);
                     if(!(_loc1_ && this))
                     {
                        §§push((§§pop() as §`Y§).§&,§);
                        loop1:
                        while(true)
                        {
                           §§push(§§pop().§ w§());
                           addr95:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc2_)
                                 {
                                    addr108:
                                    §§push(§ !g§.§;!'§);
                                    break;
                                 }
                              }
                              else
                              {
                                 §§push(§ !g§.§;!'§);
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 §§push((§§pop() as §`Y§).§&,§);
                                 if(_loc2_)
                                 {
                                    if(_loc1_)
                                    {
                                       continue loop1;
                                    }
                                    §§push(true);
                                    if(_loc2_)
                                    {
                                       §§pop().§""8§(§§pop());
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          §§goto(addr25);
                                       }
                                       addr115:
                                       addr25:
                                       return;
                                       addr115:
                                       §§goto(addr25);
                                    }
                                    §§goto(addr115);
                                 }
                                 else
                                 {
                                    addr113:
                                    §§push(true);
                                 }
                                 §§pop().§4"1§(§§pop());
                              }
                              §§goto(addr115);
                              continue loop1;
                           }
                        }
                     }
                     §§goto(addr113);
                     §§push((§§pop() as §`Y§).§&,§);
                  }
                  §§goto(addr108);
               }
               §§goto(addr25);
            }
            §§goto(addr95);
         }
         §§goto(addr82);
      }
   }
}
