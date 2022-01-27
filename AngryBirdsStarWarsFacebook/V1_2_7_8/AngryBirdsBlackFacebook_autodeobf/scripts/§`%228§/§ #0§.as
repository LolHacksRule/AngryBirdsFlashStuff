package §`"8§
{
   import §,#+§.§7!m§;
   import §,#+§.§="l§;
   import §7§.§%>§;
   import §7§.§21§;
   import §>P§.§5"3§;
   
   public class § #0§ extends §%"?§
   {
       
      
      protected var §#"§:§5"3§;
      
      protected var §;!]§:Vector.<String>;
      
      public function § #0§(param1:§7!m§, param2:§5"3§)
      {
         this.§;!]§ = new Vector.<String>();
         this.§#"§ = param2;
         super(param1);
      }
      
      override protected function initializeFile(param1:String) : void
      {
         var _loc4_:String = null;
         var _loc2_:Array = param1.match(/^levels\/(.*)\.lua$/i);
         if(_loc2_)
         {
            _loc4_ = _loc2_[1].toLowerCase();
            this.§;!=§(_loc4_,param1);
            return;
         }
         var _loc3_:Array = param1.match(/^blocks_(.*)\.lua$/i);
         if(_loc3_)
         {
            if(param1.indexOf("levelgoals") < 0 && param1.indexOf("bosses") < 0)
            {
               this.§;!]§.push(§@I§(param1));
               return;
            }
         }
         super.initializeFile(param1);
      }
      
      protected function §;!=§(param1:String, param2:String) : void
      {
         var _loc3_:§="l§ = null;
         if(!§ !p§.getLevelForId(param1))
         {
            _loc3_ = §="l§.§>"Y§(§@I§(param2));
            _loc3_.name = param1;
            § !p§.addLevel(param1,_loc3_);
         }
      }
      
      public function get §'"+§() : int
      {
         return this.§;!]§.length;
      }
      
      public function §[!X§(param1:int) : String
      {
         if(param1 >= 0 && param1 < this.§;!]§.length)
         {
            return this.§;!]§[param1];
         }
         return null;
      }
      
      public function §'P§() : String
      {
         return §@I§("damagefactors.lua","core");
      }
      
      public function §>!v§() : String
      {
         return §@I§("materials.lua","core");
      }
      
      override protected function addSpriteSheet(param1:§21§) : void
      {
         var _loc3_:§%>§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < param1.§+"c§)
         {
            _loc3_ = param1.§-"S§(_loc2_);
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
