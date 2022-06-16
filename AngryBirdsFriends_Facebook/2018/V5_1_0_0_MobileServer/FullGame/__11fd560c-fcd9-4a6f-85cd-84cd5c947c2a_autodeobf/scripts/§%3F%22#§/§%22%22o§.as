package §?"#§
{
   public class §""o§ implements §1!C§
   {
       
      
      private var §=q§:String;
      
      private var §@_§:Array;
      
      private var §%!8§:Boolean;
      
      public function §""o§(param1:String)
      {
         this.§@_§ = [];
         super();
         this.§=q§ = param1;
      }
      
      public function get name() : String
      {
         return this.§=q§;
      }
      
      protected function §>"@§(param1:String) : §=!I§
      {
         var _loc2_:§=!I§ = null;
         for each(_loc2_ in this.§@_§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §?!l§(param1:§=!I§) : void
      {
         if(this.§>"@§(param1.name))
         {
            param1.dispose();
            return;
         }
         this.§@_§.push(param1);
         this.§%!8§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§=!I§ = null;
         for each(_loc1_ in this.§@_§)
         {
            _loc1_.dispose();
         }
         this.§@_§ = [];
      }
      
      public function §-#9§(param1:String) : §#$5§
      {
         var _loc2_:§#$5§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§@_§.length)
         {
            _loc2_ = (this.§@_§[_loc3_] as §=!I§).§-#9§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get § #0§() : int
      {
         return this.§@_§.length;
      }
      
      public function §+!u§(param1:int) : §=!I§
      {
         if(param1 < 0 || param1 >= this.§ #0§)
         {
            return null;
         }
         if(!this.§%!8§)
         {
            this.§@_§.sortOn("name");
            this.§%!8§ = true;
         }
         return this.§@_§[param1];
      }
   }
}
