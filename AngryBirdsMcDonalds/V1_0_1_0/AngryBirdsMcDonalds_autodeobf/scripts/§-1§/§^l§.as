package §-1§
{
   import §,![§.§2!"§;
   
   public class §^l§
   {
      
      public static const §]6§:int = 0;
      
      public static const §>!3§:int = 1;
      
      public static const §1!!§:int = 2;
       
      
      public var §!!Y§:Array;
      
      public var §7O§:int;
      
      public var §'&§:int;
      
      public var mName:String;
      
      public var §^!E§:String;
      
      public function §^l§(param1:int, param2:String)
      {
         super();
         this.§'&§ = param1;
         this.mName = param2;
         this.§!!Y§ = new Array();
      }
      
      public function §+!R§(param1:§2!"§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§!!Y§[this.§!!Y§.length] = param1;
      }
      
      public function §<`§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§^!E§ = param1;
         if(this.§'&§ == §]6§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§!!Y§.length)
            {
               if((this.§!!Y§[_loc2_] as §2!"§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§!!Y§[_loc2_] as §2!"§).setComponentState(§>!6§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§!!Y§[_loc2_] as §2!"§).§4!-§ == §>!6§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§!!Y§[_loc2_] as §2!"§).setComponentState(§>!6§.§?3§);
               }
               _loc2_++;
            }
         }
         if(this.§'&§ == §1!!§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§!!Y§.length)
            {
               if((this.§!!Y§[_loc2_] as §2!"§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§!!Y§[_loc2_] as §2!"§).§4!-§ == §>!6§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§!!Y§[_loc2_] as §2!"§).setComponentState(§>!6§.§?3§);
                  }
                  else if((this.§!!Y§[_loc2_] as §2!"§).§4!-§ == §>!6§.§?3§)
                  {
                     if(this.§?a§().length < this.§7O§)
                     {
                        (this.§!!Y§[_loc2_] as §2!"§).setComponentState(§>!6§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§?a§().length >= this.§7O§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§!!Y§.length)
                  {
                     if((this.§!!Y§[_loc3_] as §2!"§).§4!-§ == §>!6§.§?3§)
                     {
                        (this.§!!Y§[_loc3_] as §2!"§).setComponentState(§>!6§.§5h§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§!!Y§.length)
                  {
                     if((this.§!!Y§[_loc3_] as §2!"§).§4!-§ == §>!6§.§5h§)
                     {
                        (this.§!!Y§[_loc3_] as §2!"§).setComponentState(§>!6§.§?3§);
                     }
                     _loc3_++;
                  }
               }
               _loc2_++;
            }
         }
      }
      
      public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§!!Y§.length)
         {
            (this.§!!Y§[_loc2_] as §2!"§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §9T§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§!!Y§.length)
         {
            (this.§!!Y§[_loc1_] as §2!"§).setComponentState(§>!6§.§?3§);
            _loc1_++;
         }
      }
      
      public function §;G§(param1:Number) : void
      {
         this.§7O§ = param1;
         if(param1 == 1)
         {
            this.§'&§ = §]6§;
         }
         else
         {
            this.§'&§ = §1!!§;
         }
      }
      
      public function §,O§(param1:Array) : void
      {
         this.§9T§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§<`§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §?a§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§!!Y§.length)
         {
            if((this.§!!Y§[_loc2_] as §2!"§).§4!-§ == §>!6§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§!!Y§[_loc2_] as §2!"§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
