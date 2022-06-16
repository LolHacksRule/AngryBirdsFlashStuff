package §>!u§
{
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §-"'§
   {
       
      
      private var §#-§:int = 0;
      
      private var § W§:Array;
      
      private var §?!3§:Array;
      
      private var §7!!§:Array;
      
      public function §-"'§()
      {
         this.§ W§ = [];
         this.§?!3§ = [];
         super();
      }
      
      public function §6"+§(param1:String, param2:String) : void
      {
         this.§ W§.push({
            "url":param1,
            "link":param2
         });
         this.§+b§();
      }
      
      private function §+b§() : void
      {
         if(this.§#-§ == 0 && this.§ W§.length > 0)
         {
            this.§^U§();
         }
      }
      
      private function §^U§() : void
      {
         ++this.§#-§;
         var _loc1_:String = this.§ W§[0].url;
         var _loc2_:String = this.§ W§[0].link;
         var _loc3_:§7!5§ = this.§[!5§(_loc1_,_loc2_);
         var _loc4_:Loader;
         (_loc4_ = _loc3_.§6]§(_loc1_)).contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         _loc4_.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§<5§);
         _loc4_.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§>"E§);
      }
      
      private function §>"E§(param1:SecurityErrorEvent) : void
      {
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§ W§.shift();
         --this.§#-§;
         this.§+b§();
      }
      
      private function §<5§(param1:IOErrorEvent) : void
      {
         this.§ W§.shift();
         --this.§#-§;
         this.§+b§();
      }
      
      public function §5`§(param1:String, param2:String) : §7!5§
      {
         var _loc3_:§7!5§ = this.§[!5§(param1,param2);
         if(_loc3_.§5O§())
         {
            return _loc3_;
         }
         this.§6"+§(param1,param2);
         return _loc3_;
      }
      
      private function §[!5§(param1:String, param2:String = "") : §7!5§
      {
         var _loc3_:§7!5§ = this.§?!3§[param1];
         if(_loc3_ == null)
         {
            _loc3_ = new §7!5§(param2);
            this.§?!3§[param1] = _loc3_;
         }
         return _loc3_;
      }
   }
}
