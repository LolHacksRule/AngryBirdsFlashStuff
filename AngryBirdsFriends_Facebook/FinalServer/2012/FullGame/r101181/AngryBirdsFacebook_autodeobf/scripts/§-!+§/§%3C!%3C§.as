package §-!+§
{
   import com.AngryBirds.friendsbar.InvitePlateAsset;
   
   public class §<!<§ extends §=G§
   {
       
      
      private var §,@§:InvitePlateAsset;
      
      public function §<!<§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
         do
         {
            this.init();
         }
         while(!(_loc1_ || this));
         
      }
      
      private function init() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            addChild(this.§,@§ = new InvitePlateAsset());
            if(!_loc2_)
            {
               addr46:
               this.§,@§.§'J§.mouseEnabled = false;
            }
            return;
         }
         §§goto(addr46);
      }
      
      override public function update() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(data)
            {
               loop0:
               while(true)
               {
                  §8""§();
                  while(!_loc1_)
                  {
                     this.§,@§.§'J§.text = data.userName || "";
                     if(!_loc1_)
                     {
                        if(!(_loc1_ && this))
                        {
                           break loop0;
                        }
                        continue loop0;
                     }
                  }
               }
               return;
            }
            return;
         }
         §§goto(addr80);
      }
   }
}
