package §1" §
{
   import §7!@§.§+`§;
   import §;b§.StateLevelEditor;
   
   public class §#!j§
   {
      
      private static var §+!u§:§#!j§;
       
      
      private var §5"&§:StateLevelEditor;
      
      private var §0!M§:§^"&§;
      
      private var §6!F§:§<!,§;
      
      private var §>!B§:§0"$§;
      
      private var §-G§:§`!]§;
      
      private var §;8§:§4"?§;
      
      private var §3B§:§1!,§;
      
      private var §+">§:§6!2§;
      
      private var §'"'§:§@"?§;
      
      private var §87§:§%&§;
      
      private var §="-§:Vector.<§4!x§>;
      
      public function §#!j§(param1:StateLevelEditor)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§4!x§ = null;
         if(!(_loc6_ && this))
         {
            this.§="-§ = new Vector.<§4!x§>();
         }
         loop0:
         while(true)
         {
            super();
            addr299:
            while(true)
            {
               §+!u§ = this;
               addr295:
               while(true)
               {
                  this.§5"&§ = param1;
                  continue loop0;
               }
            }
         }
      }
      
      public static function get §[E§() : §#!j§
      {
         return §+!u§;
      }
      
      public function activate() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§4!x§ = null;
         var _loc3_:* = this.§="-§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc4_ || _loc3_)
            {
               _loc1_.activate();
            }
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§4!x§ = null;
         for each(_loc2_ in this.§="-§)
         {
            if(_loc6_)
            {
               _loc2_.update(param1);
            }
         }
      }
      
      public function get §<!_§() : StateLevelEditor
      {
         return this.§5"&§;
      }
      
      public function get §"L§() : §^"&§
      {
         return this.§0!M§;
      }
      
      public function get §0"!§() : §6!2§
      {
         return this.§+">§;
      }
      
      public function get §3d§() : §<!,§
      {
         return this.§6!F§;
      }
      
      public function get §^!b§() : §0"$§
      {
         return this.§>!B§;
      }
      
      public function get §%8§() : §`!]§
      {
         return this.§-G§;
      }
      
      public function get §9L§() : §4"?§
      {
         return this.§;8§;
      }
      
      public function get §5l§() : §@"?§
      {
         return this.§'"'§;
      }
      
      public function get §&!F§() : §1!,§
      {
         return this.§3B§;
      }
      
      public function get §0!;§() : §%&§
      {
         return this.§87§;
      }
   }
}
