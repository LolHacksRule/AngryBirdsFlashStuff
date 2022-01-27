package §'#%§
{
   public final class §2#?§
   {
       
      
      private var §!"v§:Boolean = false;
      
      private var §,"x§:Array;
      
      private var callback:Function = null;
      
      public function §2#?§()
      {
         this.§,"x§ = [];
         super();
      }
      
      public function get locked() : Boolean
      {
         return this.§!"v§;
      }
      
      public function get keyCodes() : Array
      {
         return this.§,"x§;
      }
      
      public function lockWithKeycodes(param1:Array, param2:Function) : Boolean
      {
         var _loc3_:Boolean = true;
         if(this.locked)
         {
            _loc3_ = this.unlock();
         }
         if(_loc3_)
         {
            _loc3_ = §-#1§.§%!E§.§+M§(param1);
         }
         if(_loc3_)
         {
            if(§-#1§.§%!E§.§ #1§(param1,this.unlock))
            {
               this.§!!=§(true);
               this.§1!w§(param1);
               this.§0#5§(param2);
            }
            else
            {
               _loc3_ = false;
            }
         }
         return _loc3_;
      }
      
      public function unlock() : Boolean
      {
         var _loc1_:Boolean = false;
         if(this.locked)
         {
            if(§-#1§.§%!E§.§!v§(this.keyCodes))
            {
               this.§!!=§(false);
               this.§5§();
               this.§0#5§(null);
               this.§1!w§([]);
               _loc1_ = true;
            }
         }
         return _loc1_;
      }
      
      private function §!!=§(param1:Boolean) : void
      {
         this.§!"v§ = param1;
      }
      
      private function §1!w§(param1:Array) : void
      {
         this.§,"x§ = param1.concat();
      }
      
      private function §0#5§(param1:Function) : void
      {
         this.callback = param1;
      }
      
      private function §5§() : void
      {
         if(typeof this.callback == "function")
         {
            try
            {
               this.callback();
            }
            catch(error:Error)
            {
            }
         }
      }
   }
}
