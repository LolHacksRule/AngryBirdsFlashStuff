package §6A§
{
   import §&o§.§?T§;
   import §0! §.Texture;
   
   public class §3;§
   {
       
      
      private var §+J§:§?T§;
      
      private var §"8§:Number;
      
      public function §3;§(param1:Texture, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
            if(_loc3_ || param2)
            {
               this.§+J§ = new §?T§(param1);
               if(_loc3_ || param1)
               {
                  this.§"8§ = param2;
               }
            }
         }
      }
      
      public function get image() : §?T§
      {
         return this.§+J§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§"8§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§+J§);
            if(_loc2_ || _loc2_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr54);
            }
            §§pop().dispose();
            if(_loc2_ || this)
            {
               this.§+J§ = null;
            }
         }
         addr54:
         if(_loc2_)
         {
            §§push(this.§+J§);
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            §§push(this.§"8§);
            if(!_loc3_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§"8§ = §§pop();
         }
      }
      
      public function §,!L§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§"8§ = param1;
         }
      }
      
      public function §5!E§(param1:Texture) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§+J§.texture = param1;
         }
      }
   }
}
