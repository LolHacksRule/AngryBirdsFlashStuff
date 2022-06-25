package §%x§
{
   import §?^§.§8!?§;
   import each.Texture;
   
   public class §9!9§
   {
       
      
      private var §;!G§:§8!?§;
      
      private var §<R§:Number;
      
      public function §9!9§(param1:Texture, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super();
            if(!(_loc4_ && this))
            {
               this.§;!G§ = new §8!?§(param1);
               if(_loc3_ || this)
               {
                  addr49:
                  this.§<R§ = param2;
               }
               return;
            }
         }
         §§goto(addr49);
      }
      
      public function get image() : §8!?§
      {
         return this.§;!G§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§<R§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§;!G§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     addr43:
                     this.§;!G§.dispose();
                     if(!_loc1_)
                     {
                        addr46:
                        this.§;!G§ = null;
                     }
                  }
               }
               return;
            }
            §§goto(addr43);
         }
         §§goto(addr46);
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            §§push(this.§<R§);
            if(!_loc3_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§<R§ = §§pop();
         }
      }
      
      public function §!!-§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§<R§ = param1;
         }
      }
      
      public function §[<§(param1:Texture) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§;!G§.texture = param1;
         }
      }
   }
}
