package §'c§
{
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §6!i§
   {
       
      
      private var §>"4§:int = 0;
      
      private var §0!0§:Array;
      
      private var §0!G§:Array;
      
      private var §;!$§:Array;
      
      public function §6!i§()
      {
         this.§0!0§ = [];
         this.§0!G§ = [];
         super();
      }
      
      public function §]!#§(param1:String, param2:String) : void
      {
         this.§0!0§.push({
            "url":param1,
            "link":param2
         });
         this.§'e§();
      }
      
      private function §'e§() : void
      {
         if(this.§>"4§ == 0 && this.§0!0§.length > 0)
         {
            this.§^"9§();
         }
      }
      
      private function §^"9§() : void
      {
         ++this.§>"4§;
         var _loc1_:String = this.§0!0§[0].url;
         var _loc2_:String = this.§0!0§[0].link;
         var _loc3_:§#0§ = this.§6r§(_loc1_,_loc2_);
         var _loc4_:Loader;
         (_loc4_ = _loc3_.§"8§(_loc1_)).contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         _loc4_.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§9"<§);
         _loc4_.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§%u§);
      }
      
      private function §%u§(param1:SecurityErrorEvent) : void
      {
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§0!0§.shift();
         --this.§>"4§;
         this.§'e§();
      }
      
      private function §9"<§(param1:IOErrorEvent) : void
      {
         this.§0!0§.shift();
         --this.§>"4§;
         this.§'e§();
      }
      
      public function §^!,§(param1:String, param2:String) : §#0§
      {
         var _loc3_:§#0§ = this.§6r§(param1,param2);
         if(_loc3_.§<!v§())
         {
            return _loc3_;
         }
         this.§]!#§(param1,param2);
         return _loc3_;
      }
      
      private function §6r§(param1:String, param2:String = "") : §#0§
      {
         var _loc3_:§#0§ = this.§0!G§[param1];
         if(_loc3_ == null)
         {
            _loc3_ = new §#0§(param2);
            this.§0!G§[param1] = _loc3_;
         }
         return _loc3_;
      }
   }
}
