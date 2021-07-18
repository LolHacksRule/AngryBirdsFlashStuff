package §;!§
{
   import §7!§.§#"0§;
   import §7!§.§2W§;
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import §[!i§.§2"-§;
   import com.angrybirds.§&!"§;
   
   public class §@!C§ extends §;" §
   {
      
      public static const §-!q§:String = "LevelEndFailStateRio";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §-!q§ = "LevelEndFailStateRio";
         }
      }
      
      private var §!!=§:§2"-§;
      
      public function §@!C§(param1:§5!Y§, param2:Boolean, param3:String, param4:§6h§)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super(param1,param2,param3,param4);
            do
            {
               this.§!!=§ = new §2"-§(this);
            }
            while(_loc5_);
            
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §?P§ = new §2W§(this);
            while(true)
            {
               §?P§.init(this.§`!K§());
               loop1:
               while(!(_loc2_ && this))
               {
                  while(true)
                  {
                     §?P§.movieClip.cacheAsBitmap = true;
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr63);
      }
      
      protected function §`!K§() : XML
      {
         return §#"0§.§+#§.Views.ViewLevelEndFailCustom[0];
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.activate(param1);
            loop0:
            while(true)
            {
               §§push(§6!!§.singleton);
               loop1:
               while(true)
               {
                  §§push(§§pop().§%![§);
                  addr64:
                  while(true)
                  {
                     §§pop().§[!"§();
                     addr65:
                     while(!_loc2_)
                     {
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(nextState.length > 0)
            {
               if(_loc2_)
               {
                  addr62:
                  §&!"§.§1!D§.clearLevel();
               }
               while(true)
               {
               }
               addr65:
            }
            while(true)
            {
               this.§!!=§.update(param1);
               if(!_loc3_)
               {
                  break;
               }
               §§goto(addr65);
            }
            return;
         }
         §§goto(addr62);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.deActivate();
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.cleanup();
         }
      }
      
      public function §8!w§() : String
      {
         return §[j§.§-!q§;
      }
      
      public function §0!Z§() : String
      {
         return §+A§.§-!q§;
      }
      
      public function §=!V§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §<f§(param1);
         }
      }
      
      public function get §@!R§() : §5!Y§
      {
         return §&" §;
      }
      
      public function §[H§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §&" §.loadLevel(§&" §.getValidLevelId(this.§@!R§.getNextLevelId()));
         }
         do
         {
            §<f§(§[j§.§-!q§);
         }
         while(!_loc1_);
         
      }
   }
}
