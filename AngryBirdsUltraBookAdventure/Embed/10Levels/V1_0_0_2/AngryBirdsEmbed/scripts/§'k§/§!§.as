package §'k§
{
   import flash.utils.Dictionary;
   
   public class §!§ extends §7x§
   {
       
      
      private var §!6§:Dictionary;
      
      private var §-`§:§7x§;
      
      public function §!§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§!6§ = new Dictionary();
            if(_loc2_)
            {
               addr25:
               super();
            }
            return;
         }
         §§goto(addr25);
      }
      
      public function §<y§(param1:String, param2:§7x§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            if(param2 == null)
            {
               if(_loc3_ || param1)
               {
                  throw new Error("Trying to add a null animation");
               }
            }
            else
            {
               addr59:
               if(!this.§-`§)
               {
                  if(_loc3_ || _loc3_)
                  {
                     this.§-`§ = param2;
                     if(_loc4_)
                     {
                     }
                     §§goto(addr79);
                  }
               }
               this.§!6§[param1] = param2;
            }
            addr79:
            return;
         }
         §§goto(addr59);
      }
      
      override public function addFrame(param1:§2v§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§-`§.addFrame(param1);
         }
      }
      
      override public function getFrame(param1:int) : §2v§
      {
         return this.§-`§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§-`§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §7x§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(this.§!6§[param1])
            {
               if(!_loc2_)
               {
                  §§goto(addr41);
               }
            }
            return this.§-`§;
         }
         addr41:
         return this.§!6§[param1];
      }
   }
}
