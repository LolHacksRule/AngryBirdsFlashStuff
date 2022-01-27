package §9"U§
{
   import §#g§.§>"-§;
   import §+=§.§<T§;
   import §+=§.§@"Z§;
   import §null §.§'!k§;
   import §null §.§5#§;
   
   public class §6n§ extends §9U§
   {
       
      
      protected var §7W§:§>"-§;
      
      protected var §!"&§:Vector.<String>;
      
      public function §6n§(param1:§5#§, param2:§>"-§)
      {
         this.§!"&§ = new Vector.<String>();
         this.§7W§ = param2;
         super(param1);
      }
      
      override protected function initializeFile(param1:String) : void
      {
         var _loc4_:String = null;
         var _loc2_:Array = param1.match(/^levels\/(.*)\.lua$/i);
         if(_loc2_)
         {
            _loc4_ = _loc2_[1].toLowerCase();
            this.§ f§(_loc4_,param1);
            return;
         }
         var _loc3_:Array = param1.match(/^blocks_(.*)\.lua$/i);
         if(_loc3_)
         {
            if(param1.indexOf("levelgoals") < 0 && param1.indexOf("bosses") < 0)
            {
               this.§!"&§.push(§,!;§(param1));
               return;
            }
         }
         super.initializeFile(param1);
      }
      
      protected function § f§(param1:String, param2:String) : void
      {
         var _loc3_:§'!k§ = null;
         if(!§'""§.getLevelForId(param1))
         {
            _loc3_ = §'!k§.§%B§(§,!;§(param2));
            _loc3_.name = param1;
            §'""§.addLevel(param1,_loc3_);
         }
      }
      
      public function get §@"]§() : int
      {
         return this.§!"&§.length;
      }
      
      public function §<"#§(param1:int) : String
      {
         if(param1 >= 0 && param1 < this.§!"&§.length)
         {
            return this.§!"&§[param1];
         }
         return null;
      }
      
      public function §`#-§() : String
      {
         return §,!;§("damagefactors.lua","core");
      }
      
      public function §="@§() : String
      {
         return §,!;§("materials.lua","core");
      }
      
      override protected function addSpriteSheet(param1:§<T§) : void
      {
         var _loc3_:§@"Z§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < param1.§8x§)
         {
            _loc3_ = param1.§%§(_loc2_);
            if(_loc3_.name.indexOf("TEXTURE_") == 0)
            {
               _loc3_.name = "INGAME_" + _loc3_.name;
            }
            _loc2_++;
         }
         super.addSpriteSheet(param1);
      }
   }
}
