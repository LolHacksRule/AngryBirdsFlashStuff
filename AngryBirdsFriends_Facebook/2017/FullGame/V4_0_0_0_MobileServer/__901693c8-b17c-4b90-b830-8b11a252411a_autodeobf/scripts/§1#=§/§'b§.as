package §1#=§
{
   import §&"J§.§%"E§;
   import §&"J§.§2#<§;
   import §&"J§.§3!3§;
   import §&"J§.§4"n§;
   import §&"J§.§5#!§;
   import §&"J§.§7>§;
   import §&"J§.§="6§;
   import §&"J§.§?$6§;
   import §&"J§.§`!!§;
   import §<"p§.§?!T§;
   import flash.display.Loader;
   import flash.utils.Dictionary;
   
   public class §'b§ extends §9@§
   {
      
      public static var §4#;§:String;
      
      public static var §,L§:Dictionary = new Dictionary();
       
      
      private var §+"§:Loader;
      
      private var §4!N§:§%#K§;
      
      public function §'b§()
      {
         super();
      }
      
      private function §1#k§(param1:Class) : §%#K§
      {
         if(!§,L§[param1])
         {
            §,L§[param1] = [];
         }
         var _loc2_:Array = §,L§[param1];
         if(_loc2_.length == 0)
         {
            return new param1();
         }
         return _loc2_.pop();
      }
      
      private function §?#§(param1:§%#K§) : void
      {
         var _loc2_:Class = Object(this.§4!N§).constructor;
         if(!§,L§[_loc2_])
         {
            §,L§[_loc2_] = [];
         }
         §,L§[_loc2_].push(param1);
      }
      
      private function §5#^§() : void
      {
         var _loc1_:Class = null;
         if(this.§<#g§)
         {
            switch(Object(this.§<#g§).constructor)
            {
               case §4"n§:
                  _loc1_ = §2"_§;
                  break;
               case §7>§:
                  _loc1_ = §%"U§;
                  break;
               case §="6§:
                  _loc1_ = §+"O§;
                  break;
               case §%"E§:
                  _loc1_ = §3!7§;
                  break;
               case §5#!§:
                  _loc1_ = §6$9§;
                  break;
               case §?$6§:
                  _loc1_ = §<!g§;
                  break;
               case §2#<§:
                  _loc1_ = §^Q§;
                  break;
               case §`!!§:
                  _loc1_ = §`#A§;
            }
         }
         if(!_loc1_)
         {
            §?!T§.log("WARNING! Unknown score item found!");
            return;
         }
         var _loc2_:Class = !!this.§4!N§ ? Object(this.§4!N§).constructor : null;
         if(_loc1_ != _loc2_)
         {
            if(this.§4!N§)
            {
               this.§?#§(removeChild(this.§4!N§) as §%#K§);
            }
            this.§4!N§ = addChild(this.§1#k§(_loc1_)) as §%#K§;
         }
         this.§4!N§.data = this.§<#g§;
      }
      
      override public function get width() : Number
      {
         return 61;
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         this.update();
      }
      
      private function update() : void
      {
         if(data != null)
         {
            this.§5#^§();
         }
      }
      
      public function get §<#g§() : §3!3§
      {
         return data as §3!3§;
      }
      
      public function get §>!0§() : §%#K§
      {
         return this.§4!N§;
      }
   }
}
