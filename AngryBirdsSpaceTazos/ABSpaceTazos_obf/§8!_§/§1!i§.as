package §8!_§
{
   import § !Y§.§&$§;
   import §"!&§.§8"F§;
   import §%!r§.§3!'§;
   import §,"&§.§9q§;
   import §3C§.§[!E§;
   import §^=§.§-G§;
   import §^=§.§1"F§;
   import §`!j§.§9"!§;
   
   public class §1!i§ extends §5!&§
   {
      
      public static const STATE_NAME:String = "LevelEndStateRio";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            STATE_NAME = "LevelEndStateRio";
         }
      }
      
      private var §?"§:§[!E§;
      
      public function §1!i§(param1:§9"!§, param2:Boolean, param3:String, param4:§3!'§, param5:§8"F§)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param2)
         {
            super(param1,param2,param3,param4);
         }
         do
         {
            this.§?"§ = new §[!E§(this,param5);
         }
         while(_loc6_ && param2);
         
      }
      
      protected function §!!n§() : XML
      {
         return §-G§.§4+§.Views.ViewLevelEndCustom[0];
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.init();
            do
            {
               §8!A§ = new §1"F§(this);
               do
               {
                  §8!A§.init(this.§!!n§());
               }
               while(!_loc1_);
               
            }
            while(!(_loc1_ || this));
            
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.activate(param1);
         }
         loop0:
         while(true)
         {
            §§push(§ !g§.§;!'§);
            while(true)
            {
               §§push(§§pop().§>";§);
               loop2:
               while(true)
               {
                  §§pop().§@;§();
                  loop3:
                  while(true)
                  {
                     §§push(§ !g§.§;!'§);
                     loop4:
                     while(true)
                     {
                        §§push(§§pop().§>";§);
                        if(!_loc3_)
                        {
                           break;
                        }
                        §§pop().openPopup(this.§?"§);
                        loop5:
                        while(_loc3_)
                        {
                           §&$§.§[!1§.updateTextFields(§8!A§.container,"StateEnd");
                           while(true)
                           {
                              if(_loc3_ || this)
                              {
                                 continue loop4;
                              }
                              continue loop5;
                              addr36:
                              (§§pop() as §`Y§).§&,§.§,A§(true);
                              if(_loc3_)
                              {
                                 if(_loc3_)
                                 {
                                    return;
                                 }
                                 continue loop0;
                              }
                           }
                           continue loop4;
                        }
                        continue loop3;
                     }
                     continue loop2;
                  }
               }
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.update(param1);
            loop0:
            while(true)
            {
               §§push(this.§?"§);
               if(_loc2_ || this)
               {
                  if(§§pop().isOpen)
                  {
                     while(true)
                     {
                        §§push(this.§?"§);
                        addr84:
                        while(true)
                        {
                           §§pop().update(param1);
                           addr86:
                           while(true)
                           {
                           }
                        }
                     }
                     addr82:
                  }
                  for(; nextState.length > 0; §§goto(addr86))
                  {
                     if(_loc3_)
                     {
                        addr59:
                        break;
                     }
                     if(_loc3_ && this)
                     {
                        continue;
                     }
                     if(!_loc3_)
                     {
                        continue loop0;
                     }
                     §§goto(addr82);
                  }
                  return;
               }
               §§goto(addr84);
            }
         }
         §§goto(addr59);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.deActivate();
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.cleanup();
         }
      }
      
      public function §[!V§() : String
      {
         return §?!#§.STATE_NAME;
      }
      
      public function § [§() : String
      {
         return StateEpisodeSelection.STATE_NAME;
      }
      
      public function §+"$§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §8!^§(param1);
         }
      }
      
      public function get §=!+§() : §9"!§
      {
         return §6u§;
      }
      
      public function §@!§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §6u§.loadLevel(§6u§.getValidLevelId(this.§=!+§.getNextLevelId()));
         }
         do
         {
            §8!^§(§?!#§.STATE_NAME);
         }
         while(_loc2_ && _loc2_);
         
      }
   }
}
