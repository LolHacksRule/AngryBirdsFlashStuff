package §<!V§
{
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §9!3§
   {
       
      
      private var §>P§:int = 0;
      
      private var §^!"§:Array;
      
      private var §]!C§:Array;
      
      private var §5"3§:Array;
      
      public function §9!3§()
      {
         this.§^!"§ = [];
         this.§]!C§ = [];
         super();
      }
      
      public function § !3§(param1:String, param2:String) : void
      {
         this.§^!"§.push({
            "url":param1,
            "link":param2
         });
         this.§9'§();
      }
      
      private function §9'§() : void
      {
         if(this.§>P§ == 0 && this.§^!"§.length > 0)
         {
            this.§^!Q§();
         }
      }
      
      private function §^!Q§() : void
      {
         ++this.§>P§;
         var _loc1_:String = this.§^!"§[0].url;
         var _loc2_:String = this.§^!"§[0].link;
         var _loc3_:§'"M§ = this.§+^§(_loc1_,_loc2_);
         var _loc4_:Loader;
         (_loc4_ = _loc3_.§ in§(_loc1_)).contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         _loc4_.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§]!^§);
         _loc4_.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§2!q§);
      }
      
      private function §2!q§(param1:SecurityErrorEvent) : void
      {
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§^!"§.shift();
         --this.§>P§;
         this.§9'§();
      }
      
      private function §]!^§(param1:IOErrorEvent) : void
      {
         this.§^!"§.shift();
         --this.§>P§;
         this.§9'§();
      }
      
      public function §6!U§(param1:String, param2:String) : §'"M§
      {
         var _loc3_:§'"M§ = this.§+^§(param1,param2);
         if(_loc3_.§%!h§())
         {
            return _loc3_;
         }
         this.§ !3§(param1,param2);
         return _loc3_;
      }
      
      private function §+^§(param1:String, param2:String = "") : §'"M§
      {
         var _loc3_:§'"M§ = this.§]!C§[param1];
         if(_loc3_ == null)
         {
            _loc3_ = new §'"M§(param2);
            this.§]!C§[param1] = _loc3_;
         }
         return _loc3_;
      }
   }
}
