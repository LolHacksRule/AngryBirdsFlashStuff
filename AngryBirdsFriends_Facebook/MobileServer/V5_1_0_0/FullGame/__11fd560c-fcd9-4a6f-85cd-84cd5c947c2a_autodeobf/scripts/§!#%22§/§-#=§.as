package §!#"§
{
   public class §-#=§ extends §='§ implements §7Y§
   {
       
      
      private var §`#4§:Vector.<§7Y§>;
      
      private var §<#$§:Boolean = true;
      
      private var §^#G§:int = 0;
      
      public function §-#=§(param1:Array, param2:Boolean)
      {
         var _loc3_:§7Y§ = null;
         this.§`#4§ = new Vector.<§7Y§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§`#4§.push(_loc3_);
         }
         this.§<#$§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§7Y§ = null;
         for each(_loc1_ in this.§`#4§)
         {
            if(!_loc1_.isCompleted)
            {
               return false;
            }
         }
         return true;
      }
      
      override public function get isPaused() : Boolean
      {
         var _loc1_:§7Y§ = null;
         for each(_loc1_ in this.§`#4§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §0"[§() : int
      {
         if(this.§<#$§)
         {
            return this.§`#4§.length;
         }
         if(this.§`#4§.length > this.§^#G§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §3$=§() : int
      {
         if(this.§<#$§)
         {
            return 0;
         }
         return this.§^#G§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:§7Y§ = null;
         while(this.§`#4§.length > 0)
         {
            _loc1_ = this.§`#4§.shift();
            _loc1_.dispose();
         }
         super.dispose();
      }
      
      public function stop() : void
      {
         var _loc1_:§7Y§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§`#4§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §@g§() : void
      {
         var _loc1_:§7Y§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§`#4§)
            {
               _loc1_.§@g§();
            }
         }
      }
      
      override public function pause() : void
      {
         var _loc1_:§7Y§ = null;
         super.pause();
         for each(_loc1_ in this.§`#4§)
         {
            _loc1_.pause();
         }
      }
      
      override public function play() : void
      {
         var _loc1_:§7Y§ = null;
         super.play();
         for each(_loc1_ in this.§`#4§)
         {
            _loc1_.play();
         }
      }
      
      public function §3"Q§() : void
      {
         var _loc2_:§7Y§ = null;
         §]"6§ = -§"W§;
         this.§^#G§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§`#4§.length)
         {
            _loc2_ = this.§`#4§[_loc1_];
            _loc2_.§3"Q§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§7Y§ = null;
         if(!§#$A§(param1))
         {
            return;
         }
         var _loc2_:int = this.§0"[§;
         var _loc3_:int = this.§3$=§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§`#4§[_loc4_]).update(param1);
            this.§&"t§(_loc5_);
            _loc4_++;
         }
         this.§-S§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §&"t§(param1:§7Y§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§<#$§)
            {
               ++this.§^#G§;
               if(this.§^#G§ < this.§`#4§.length)
               {
                  this.§`#4§[this.§^#G§].play();
               }
            }
         }
      }
      
      private function §-S§() : void
      {
         if(this.isCompleted)
         {
            if(!§!#b§)
            {
               this.§3"Q§();
               this.play();
            }
            else if(§+"3§ != null)
            {
               try
               {
                  §+"3§();
                  §+"3§ = null;
               }
               catch(e:Error)
               {
                  §+"3§ = null;
                  if(!§2!I§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
